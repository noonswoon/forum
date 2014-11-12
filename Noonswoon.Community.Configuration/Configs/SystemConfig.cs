using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class SystemConfig:ConfigSectionBase
    {
        public SystemConfig(XmlConfigSource configSource) : base(configSource)
        {
        }

        [GlobalConfig]
        public string RootUrl { get; set; }

        [GlobalConfig]
        public string PhotoRootUrl { get; set; }


        [GlobalConfig]
        public string DocumentRootUrl { get; set; }

        [GlobalConfig]
        public string ServerVersion { get; set; }


        [GlobalConfig]
        public string IosVersion { get; set; }

        [GlobalConfig]
        public string AndroidVersion { get; set; }

        [GlobalConfig]
        public string CurrentTimeZoneInfo { get; set; }

        [GlobalConfig]
        public bool IsDowntime { get; set; }

        [GlobalConfig]
        public string MobileLogToken { get; set; }

        [GlobalConfig]
        public string RabbitMqUrl { get; set; }

        [GlobalConfig]
        public string UserCookieKey { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(true)]
        public bool IsEnableInterceptor { get; set; }

    }//end class
}