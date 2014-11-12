using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class DeviceConfig : ConfigSectionBase
    {
        public DeviceConfig(XmlConfigSource configSource)
            : base(configSource)
        {

        }

        [CountryConfig]
        public bool IsIncentivizedAppstoreRate { get; set; }

        [CountryConfig]
        public bool IsIncentivizedPlaystoreRate { get; set; }
    }
}
