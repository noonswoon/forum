using System;
using System.IO;
using System.Linq.Expressions;
using System.Reflection;
using System.Xml;
using Nini.Config;
using Noonswoon.Community.Configuration.Configs;
using log4net;

namespace Noonswoon.Community.Configuration
{
    public class AppConfigFactory
    {
        private static readonly ILog _log = LogManager.GetLogger(typeof(AppConfigFactory).Name);
        public const string GlobalSourceName = "global";
        public const string COUNTRY_SOURCE_NAME = "country_{0}";
        public const string UserLanguageSourceName = "user_language_{0}";


        public static IXmlConfigContainer Container { get; set; }
        public static IXmlConfigQuery XmlConfigQuery { get; set; }


        static AppConfigFactory()
        {
            //_log.Debug("AppSettingFactory");
        }


        //    public PropertyInfo GetPropertyInfo<TSource, TProperty>(
        //TSource source,
        //Expression<Func<TSource, TProperty>> propertyLambda)
        //    {
        //        Type type = typeof(TSource);

        //        var member = propertyLambda.Body as MemberExpression;
        //        if (member == null)
        //            throw new ArgumentException(string.Format(
        //                "Expression '{0}' refers to a method, not a property.",
        //                propertyLambda.ToString()));

        //        PropertyInfo propInfo = member.Member as PropertyInfo;
        //        if (propInfo == null)
        //            throw new ArgumentException(string.Format(
        //                "Expression '{0}' refers to a field, not a property.",
        //                propertyLambda.ToString()));

        //        if (type != propInfo.ReflectedType &&
        //            !type.IsSubclassOf(propInfo.ReflectedType))
        //            throw new ArgumentException(string.Format(
        //                "Expresion '{0}' refers to a property that is not from type {1}.",
        //                propertyLambda.ToString(),
        //                type));

        //        return propInfo;
        //    }

        public static void LoadXmlConfig()
        {
            var configs = XmlConfigQuery.LoadAllXmlConfigsFromDatabase();
            _log.DebugFormat("configs load from database count: {0}", configs.Count);
            foreach (var config in configs)
            {
                var xmlReader = XmlReader.Create(new StringReader(config.Setting));

                var source = new XmlConfigSource(xmlReader);
             
                Container.AddOrUpdate(config.SourceName, source);
            }

            //_log.Info("done loading config to container");
        }

        public static void AddOrUpdateConfig(
            string sourceName, string section, string key, object value)
        {
            //trim all space
            sourceName = sourceName.Trim();
            section = section.Trim();
            key = key.Trim();
            var stringValue = Convert.ToString(value);
            value = stringValue.Trim();

            //_log.Debug("AddConfig get call");
            //must load from database not rely on memory
            XmlConfigSource source = null;

            {
                //load new from database
                var xmlConfig = XmlConfigQuery.GetXmlConfigFromDatabase(sourceName);
                if (xmlConfig != null)
                {
                    var xmlReader = XmlReader.Create(new StringReader(xmlConfig.Setting));
                    source = new XmlConfigSource(xmlReader);
                }
            }

            IConfig config;
            if (source == null)
            {
                //need to create new to database
                source = new XmlConfigSource();
                config = source.AddConfig(section);
                config.Set(key, value);
            }
            else
            {
                if (source.Configs[section] != null)
                {
                    //_log.DebugFormat("section: {0} exist", section);
                    config = source.Configs[section];
                }
                else
                {
                    //_log.DebugFormat("no section: {0}", section);
                    config = source.AddConfig(section);
                }
                config.Set(key, value);
            }

            string xmlConfigSettingString;
            using (var stringWriter = new StringWriter())
            {
                source.Save(stringWriter);
                xmlConfigSettingString = stringWriter.ToString();
            }

           // _log.DebugFormat("xmlConfigString\n\n{0}\n\n", xmlConfigSettingString);

            {
                //var xmlConfig = XmlConfigQuery.GetXmlConfigFromDatabase(sourceName);
                var xmlConfig = new XmlConfig()
                                  {
                                      SourceName = sourceName,
                                      Setting = xmlConfigSettingString
                                  };
                XmlConfigQuery.AddOrUpdateXmlConfig(xmlConfig);

            }
        }

        public static void AddOrUpdateConfig<TConfig, TProperty>(
            string sourceName, Expression<Func<TConfig, TProperty>> configKey, object value)
        {
            Type type = typeof(TConfig);
            var section = type.Name;

            var member = configKey.Body as MemberExpression;
            if (member == null)
            {
                throw new ArgumentException(string.Format(
                    "Expression '{0}' refers to a method, not a property.",
                    configKey));
            }

            var propInfo = member.Member as PropertyInfo;
            if (propInfo == null)
            {
                throw new ArgumentException(string.Format(
                    "Expression '{0}' refers to a field, not a property.",
                    configKey.ToString()));
            }

            var key = propInfo.Name;
            AddOrUpdateConfig(sourceName, section, key, value);
        }

        public static AppConfig Create()
        {
            return Create(null, null);
        }

        public static AppConfig Create(string country)
        {
            return Create(country, null);
        }

        public static AppConfig Create(string userCountry, string userLanguage)
        {
            //know how to merge value
            var configSourceGlobal = Container.Get(GlobalSourceName);
            var configSourceCountry = Container.Get(string.Format(COUNTRY_SOURCE_NAME, userCountry));
            var configSourceUserLanguage = Container.Get(string.Format(UserLanguageSourceName, userLanguage));

            if (configSourceCountry != null)
            {
                configSourceGlobal.Merge(configSourceCountry);
            }
            if (configSourceUserLanguage != null)
            {
                configSourceGlobal.Merge(configSourceUserLanguage);
            }

            //App.Config or Web.Config
            var appConfigPath = AppDomain.CurrentDomain.SetupInformation.ConfigurationFile;
            var configSourceAppConfig = new DotNetConfigSource(appConfigPath);

            //_log.DebugFormat("configPath: {0}", appConfigPath);
            //_log.DebugFormat("configSourceAppConfig.Configs.Count: {0}", configSourceAppConfig.Configs.Count);

            //foreach (IConfig section in configSourceAppConfig.Configs)
            //{
            //    _log.DebugFormat("section.Name: {0}", section.Name);
            //}
            configSourceGlobal.Merge(configSourceAppConfig);
            return new AppConfig(configSourceGlobal);
        }


    }
}