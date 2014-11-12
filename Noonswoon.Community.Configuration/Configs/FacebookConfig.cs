using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class FacebookConfig:ConfigSectionBase
    {
        public FacebookConfig(XmlConfigSource configSource) : base(configSource)
        {
        }

        [GlobalConfig]
        public string FbAppId { get; set; }

        [GlobalConfig]
        public string FbAppSecret { get; set; }

        [GlobalConfig]
        public int ProcessIncompleteFacebookDataJobInterval { get; set; }

        [GlobalConfig]
        public int AmountOfLikeForApi { get; set; }

        [GlobalConfig]
        public int FacebookLikeQueryMax { get; set; }
        [GlobalConfig]
        public int FacebookFriendQueryMax { get; set; }
    }
}