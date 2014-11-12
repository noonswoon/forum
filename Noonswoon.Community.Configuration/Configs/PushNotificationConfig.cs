using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class PushNotificationConfig : ConfigSectionBase
    {
        public PushNotificationConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        [CountryConfig]
        public bool IsSendPushNewMatch { get; set; }


        [GlobalConfig]
        public string SendPushNewMatchStartLocalTime { get; set; }

        [UserLanguage]
        public string NewMatchPushNotificationMessage { get; set; }

        [UserLanguage]
        public string   OneUserLikesMessage { get; set; }

        [UserLanguage]
        public string NewConnectionMessage { get; set; }





        [GlobalConfig]
        public string ParseApplicationId { get; set; }


        [GlobalConfig]
        public string ParseRestApiKey { get; set; }


        [GlobalConfig]
        public string UrbanAppKey { get; set; }

        [GlobalConfig]
        public string UrbanAppMasterSecret { get; set; }

    }
}