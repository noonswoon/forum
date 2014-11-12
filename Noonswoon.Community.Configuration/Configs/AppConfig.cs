using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    //global
    public class AppConfig
    {
        private readonly XmlConfigSource _configSource;

        public AppConfig(XmlConfigSource configSource)
        {
            _configSource = configSource;
        }

        public SystemConfig SystemConfig
        {
            get { return new SystemConfig(_configSource); }
        }

        public MatchConfig MatchConfig
        {
            get { return new MatchConfig(_configSource); }
        }



        public StatisticConfig StatisticConfig
        {
            get { return new StatisticConfig(_configSource); }
        }

        public CampaignConfig CampaignConfig
        {
            get { return new CampaignConfig(_configSource); }
        }

        public ChatConfig ChatConfig
        {
            get { return new ChatConfig(_configSource); }
        }

        public EmailConfig EmailConfig
        {
            get { return new EmailConfig(_configSource); }
        }

        public TargetedUserConfig TargetedUserConfig
        {
            get { return new TargetedUserConfig(_configSource); }
        }

        public PushNotificationConfig PushNotificationConfig
        {
            get { return new PushNotificationConfig(_configSource); }
        }

        public SmsConfig SmsConfig
        {
            get { return new SmsConfig(_configSource); }
        }

        public PaymentConfig PaymentConfig
        {
            get { return new PaymentConfig(_configSource); }
        }

        public AmazonConfig AmazonConfig
        {
            get { return new AmazonConfig(_configSource); }
        }

        public FacebookConfig FacebookConfig
        {
            get { return new FacebookConfig(_configSource); }
        }

        public UserDefaultPropertyConfig UserDefaultPropertyConfig
        {
            get { return new UserDefaultPropertyConfig(_configSource); }
        }

        public SecurityConfig SecurityConfig
        {
            get { return new SecurityConfig(_configSource); }
        }

        public InviteConfig InviteConfig
        {
            get { return new InviteConfig(_configSource); }
        }

        public DeviceConfig DeviceConfig
        {

            get { return new DeviceConfig(_configSource); }
        }

        public RewardConfig RewardConfig
        {
            get { return new RewardConfig(_configSource); }
        }

        public TimeTravelConfig TimeTravelConfig
        {
            get { return new TimeTravelConfig(_configSource); }
        }

        public CandyConfig CandyConfig
        {
            get { return new CandyConfig(_configSource); }
        }

    }

    public class CandyConfig:ConfigSectionBase
    {
        public CandyConfig(XmlConfigSource configSource) : base(configSource)
        {
        }
        public int LikePaidAmount { get; set; }
    }

//end class


//end class
}//end namespace