using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class TimeTravelConfig : ConfigSectionBase
    {
        public TimeTravelConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        [CountryConfig]
        public int NumberOfUserLikedOtherToEnableTimeTravel { get; set; }

        [CountryConfig]
        public int NumberOfLoggedInDayToEnableTimeTravel { get; set; }

        [CountryConfig]
        public bool IsEnableTimeTravelForUserCountry { get; set; }

        [GlobalConfig]
        public string UpdateEnableTimeTravelStartLocalTime { get; set; }

        [CountryConfig]
        public int MaxTimeTravelDaysAllowed { get; set; }

        [CountryConfig]
        public int CandyNeedToPayForEachDay { get; set; }


        [GlobalConfig]
        public int PossibleConcurrentTimeTravelCount { get; set; }
    }
}