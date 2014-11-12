using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class TargetedUserConfig:ConfigSectionBase
    {
        public TargetedUserConfig(XmlConfigSource configSource) : base(configSource)
        {
        }

        public int MinimumAgeToUseTheApp { get; set; }

        public int MinimumFriendsToUseTheApp { get; set; }
    }
}