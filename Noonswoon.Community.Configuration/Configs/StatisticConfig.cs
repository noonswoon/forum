using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class StatisticConfig : ConfigSectionBase
    {
        public StatisticConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        [GlobalConfig]
        public bool IsTrackingAppInstalledOn { get; set; }

        [GlobalConfig]
        public  bool IsAddStatisticOn { get; set; }


        [GlobalConfig]
        public string AddStatisticStartLocalTime { get; set; }

        [GlobalConfig]
        public bool IsSendStatisticForAisOn { get; set; }

        [GlobalConfig]
        public string SendStatisticForAisLocalTime { get; set; }

        [GlobalConfig]
        public int[] ExcludeFromStatisticUserIds { get; set; }

        [GlobalConfig]
        public int MinimumNumberOfUserInCountryToCreateStatistic { get; set; }

        [GlobalConfig]
        public string SummarizeMethodCalledProfilerStartLocalTime { get; set; }

        [GlobalConfig]
        public string CollectMethodCalledProfilerStartLocalTime { get; set; }

        [GlobalConfig]
        public string CollectMethodCalledProfilerStopLocalTime { get; set; }
    }
}