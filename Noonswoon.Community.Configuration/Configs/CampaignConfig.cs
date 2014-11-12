using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class CampaignConfig : ConfigSectionBase
    {
        public CampaignConfig(XmlConfigSource configSource)
            : base(configSource)
        {

        }

        [UserLanguage]
        public string CampaignImageName { get; set; }

        [UserLanguage]
        public string CampaignMessage { get; set; }

        [CountryConfig]
        public bool IsCampaignOn { get; set; }
    }
}