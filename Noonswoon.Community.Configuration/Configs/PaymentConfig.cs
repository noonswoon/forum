using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public  class PaymentConfig:ConfigSectionBase 
    {
        public PaymentConfig(XmlConfigSource configSource) : base(configSource) {
        }

        [GlobalConfig]
        public  string VerifyRenewSubscriptionStartLocalTime { get; set; }

        
        [GlobalConfig]
        public bool IsRedeemOn { get; set; }

        [UserLanguage]
        public  string RedeemCodeSmsBody { get; set; }

        [GlobalConfig]
        public string InAppBillingGoogleOauthUrl { get; set; }


        [GlobalConfig]
        public string InAppBillingClientId { get; set; }

        [GlobalConfig]
        public string InAppBillingClientSecret { get; set; }

        [GlobalConfig]
        public string InAppBillingRefreshToken { get; set; }

        [GlobalConfig]
        public string InAppBillingVerifySubscriptionUrl { get; set; }

        [GlobalConfig]
        public string InAppBillingVerifyPurchasedProductUrl { get; set; }

        [GlobalConfig]
        public string IapProductionUrl { get; set; }

        [GlobalConfig]
        public string IapSandBoxUrl { get; set; }

        [GlobalConfig]
        public string IapSharedScretKey { get; set; }


        [GlobalConfig]
        public string AppOtaVerifyTransactionIdUrl { get; set; }


        [GlobalConfig]
        public string AppOtaVerifyTransactionIdLanguage { get; set; }


        [GlobalConfig]
        public string AppOtaAndroidApiKey { get; set; }

        [GlobalConfig]
        public string AppOtaIosApiKey { get; set; }

    }
}