using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class SmsConfig:ConfigSectionBase
    {
        public SmsConfig(XmlConfigSource configSource) : base(configSource)
        {

        }

        public string BulkSmsUsername { get; set; }
        public string BulkSmsPassword { get; set; }
        public string[] MobileNumbersToSendSystemSms { get; set; }
    }
}