using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class MatchConfig : ConfigSectionBase
    {
        public MatchConfig(XmlConfigSource configSource) : base(configSource)
        {

        }

        [GlobalConfig]
        [DefaultConfigValue(10)]
        public int AdminMatchItemsPerPage { get; set; }

        [GlobalConfig]
        public string MatchStartLocalTime { get; set; }

        [GlobalConfig]
        public string AdminRateStartLocalTime { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(true)]
        public bool IsUpdateAdminRateOn { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(true)]
        public bool IsMatchAlgorithmOn { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(1)]
        public double ContributionWeightAge { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(1)]
        public double ContributionWeightHeight { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(1)]
        public  double ContributionWeightFriends { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(1)]
        public double ContributionWeightLikes { get; set; }

        [GlobalConfig]
        [DefaultConfigValue(1)]
        public  double ContributionWeightRate { get; set; }


        [CountryConfig]
        public int AutoMatchFemaleUser1Id { get; set; }

        [CountryConfig]
        public int AutoMatchFemaleUser2Id { get; set; }

        [CountryConfig]
        public int AutoMatchMaleUser1Id { get; set; }

        [CountryConfig]
        public  int AutoMatchMaleUser2Id { get; set; }

        [UserLanguage]
        public string AutoMatchChatMessage { get; set; }

        [GlobalConfig]
        public int[] UserIdsToLog { get; set; }

        [GlobalConfig]
        public int RetryTimesToGetReactivatedMatch { get; set; }

        [UserLanguage]
        public string NoonswoonAdminWelcomeMessage { get; set; }
    }
}