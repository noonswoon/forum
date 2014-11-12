using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public abstract class ConfigSectionBase
    {
        //protected ILog Log = LogManager.GetLogger(typeof(ConfigSectionBase).Name);
        protected XmlConfigSource ConfigSource;

        protected ConfigSectionBase(XmlConfigSource configSource)
        {

            if (configSource == null) throw new ArgumentNullException("configSource");
            ConfigSource = configSource;

            SetAllPropertiesValue();
        }

        protected TProperty GetConfigValue<TConfig, TProperty>(Expression<Func<TConfig, TProperty>> configKey)
        {
            Type type = typeof(TConfig);

            var member = configKey.Body as MemberExpression;
            if (member == null)
            {
                throw new ArgumentException(string.Format("Expression '{0}' refers to a method, not a property.", configKey));
            }

            var property = member.Member as PropertyInfo;

            if (property == null)
            {
                throw new ArgumentException(string.Format("Expression '{0}' refers to a field, not a property.", configKey));
            }
            // var current value
            if (property.PropertyType.IsValueType)
                throw new InvalidOperationException(@"Config Property type cannot set to value type, 
                please use int?, long?, string, or Array of int? , long?, string");

            var currentValue = property.GetValue(this, null);
            if (currentValue != null) return (TProperty)currentValue;

            //var defaultValueOfPropertyType = default(TProperty);
            string defaultValueOfProperty = null;
            object[] attirbutes = property.GetCustomAttributes(false);
            foreach (object attr in attirbutes)
            {
                var configDefaultValue = attr as DefaultConfigValue;
                if (configDefaultValue != null)
                {
                    defaultValueOfProperty = Convert.ToString(configDefaultValue.DefaulValue);
                    break;
                }
            }

            string rawConfigValue = null;
            if (string.IsNullOrEmpty(defaultValueOfProperty))
            {
                //Log.DebugFormat("type.Name to get value without given default value: {0}", type.Name);
                var section = ConfigSource.Configs[type.Name];
                if (section == null)
                {
                    throw new InvalidOperationException(string.Format("no section: {0} in any configSource", type.Name));
                }

                //Log.DebugFormat("section: {0} not null", type.Name);
                rawConfigValue = section.Get(property.Name);
            }
            else
            {
                //Log.DebugFormat("type.Name to get value with given default value: {0}", type.Name);
                var section = ConfigSource.Configs[type.Name];
                if (section == null)
                {
                    throw new InvalidOperationException(string.Format("no section: {0} in any configSource", type.Name));
                }
                //Log.DebugFormat("section: {0} not null", type.Name);
                rawConfigValue = section.Get(property.Name, defaultValueOfProperty);
            }

            //Log.DebugFormat("rawConfigValue: {0} of section {1} key: {2}", rawConfigValue, type.Name, property.Name);
            var convertedPropertyValue = ConvertPropertyValueType(property, rawConfigValue);

            property.SetValue(this, convertedPropertyValue, null);
            return (TProperty)convertedPropertyValue;
        }

        private void SetAllPropertiesValue()
        {
            var type = GetType();
            foreach (var property in type.GetProperties())
            {

                string defaultValueOfProperty = null;
                //find default value
                //Log.DebugFormat("finding value of section: {0}, key: {1}", type.Name, property.Name);
                object[] attirbutes = property.GetCustomAttributes(false);
                foreach (object attr in attirbutes)
                {
                    var configDefaultValue = attr as DefaultConfigValue;
                    if (configDefaultValue != null)
                    {
                        defaultValueOfProperty = Convert.ToString(configDefaultValue.DefaulValue);
                        break;
                    }
                }

                string rawConfigValue = null;
                if (string.IsNullOrEmpty(defaultValueOfProperty))
                {
                    //Log.DebugFormat("type.Name to get value without given default value: {0}", type.Name);
                    var section = ConfigSource.Configs[type.Name];
                    if (section == null)
                    {
                        throw new InvalidOperationException(string.Format("no section: {0} in any configSource", type.Name));
                    }

                    //Log.DebugFormat("section: {0} not null", type.Name);
                    rawConfigValue = section.Get(property.Name);
                }
                else
                {
                    //Log.DebugFormat("type.Name to get value with given default value: {0}", type.Name);
                    var section = ConfigSource.Configs[type.Name];
                    if (section == null)
                    {
                        throw new InvalidOperationException(string.Format("no section: {0} in any configSource", type.Name));
                    }
                    //Log.DebugFormat("section: {0} not null", type.Name);
                    rawConfigValue = section.Get(property.Name, defaultValueOfProperty);
                }

                //Log.DebugFormat("rawConfigValue: {0} of section {1} key: {2}", rawConfigValue, type.Name, property.Name);

                var convertedTypeValue = ConvertPropertyValueType(property, rawConfigValue);
                property.SetValue(this, convertedTypeValue, null);

            }//end for each

        }

        private object ConvertPropertyValueType(PropertyInfo property, string rawConfigValue)
        {
            if (rawConfigValue == null) throw new InvalidOperationException(
                 string.Format("config key: {0} of section: {1} cannot be null", property.Name, GetType().Name));

            if (property.PropertyType.IsArray)
            {

                //Log.DebugFormat("property is Array type");
                var elementType = property.PropertyType.GetElementType();
                //if (rawConfigValue == null)
                //{
                //    Log.Debug("rawConfigValue == null");
                //    object array = Array.CreateInstance(elementType, 0);
                //    property.SetValue(this, array, null);
                //    return;
                //}
                var listType = typeof(List<>).MakeGenericType(elementType);

                var list = Activator.CreateInstance(listType);
                var csv = rawConfigValue.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                csv = csv.Select(v => v.Trim()).ToArray();
                //convert to strong type
                var addMethod = listType.GetMethod("Add", new Type[] { elementType });
                foreach (string value in csv)
                {
                    var convertedTypeValue = Convert.ChangeType(value, elementType);
                    //list.Add(convertedTypeValue);
                    addMethod.Invoke(list, new[] { convertedTypeValue });
                }

                var toArrayMethod = listType.GetMethod("ToArray", new Type[] { });
                var array = toArrayMethod.Invoke(list, new object[] { });
                return array;
            }
            else
            {
                //Log.DebugFormat("property is primitve type");

                //if (rawConfigValue == null)
                //{
                //    Log.Debug("rawConfigValue == null");
                //    //If it's a valuetype, it'll set it to the default value, if it's a reference type, it'll set it to null.
                //    property.SetValue(this, null, null);
                //    return;
                //}
                var convertedTypeValue = Convert.ChangeType(rawConfigValue, property.PropertyType);
                return convertedTypeValue;

            }


        }



    }//end class
}
