using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class RewardConfig:ConfigSectionBase
    {

        public RewardConfig(XmlConfigSource configSource)
            : base(configSource)
        {

        }

        public int FreeCandyFromWatchVideo { get; set; }

    }
}