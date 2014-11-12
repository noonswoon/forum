using System;
using System.Configuration;

namespace Noonswoon.Configuration.Configs
{
    public class ConfigFileSetting
    {

        public string PubnubSubscribeKey
        {
            get
            {
                var pubnubSubscribeKey = ConfigurationManager.AppSettings["pubnubSubscribeKey"];
                return pubnubSubscribeKey;
            }

        }

        public string PubnubPublishKey
        {
            get
            {
                var pubnubPublishKey = ConfigurationManager.AppSettings["pubnubPublishKey"];
                return pubnubPublishKey;
            }
        }

        public string FbAppId
        {
            get
            {
                var fbAppId = ConfigurationManager.AppSettings["fbAppId"];
                return fbAppId;
            }
        }

        public string FbAppSecret
        {
            get
            {
                var fbAppSecret = ConfigurationManager.AppSettings["fbAppSecret"];
                return fbAppSecret;

            }

        }

        public TimeZoneInfo CurrentTimeZoneInfo
        {
            get
            {
                var timeZoneId = ConfigurationManager.AppSettings["currentTimeZoneId"];
                if (string.IsNullOrEmpty(timeZoneId))
                {
                    throw new
                        ArgumentException(@"Please set 'currentTimeZoneId' value
                            in AppSettings Section in Config file");
                }

                var currentTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById(timeZoneId);
                return currentTimeZoneInfo;
            }
        }

        public string UrbanAppKey
        {
            get
            {
                var urbanAppKey = ConfigurationManager.AppSettings["urbanAppKey"];
                return urbanAppKey;
            }
        }

        public string UrbanAppMasterSecret
        {
            get
            {
                var urbanAppMasterSecret = ConfigurationManager.AppSettings["urbanAppMasterSecret"];
                return urbanAppMasterSecret;
            }
        }

        public string ConnectionString
        {
            get
            {
                var connectionString = ConfigurationManager.AppSettings["sqlServerConnectionString"];
                return connectionString;
            }
        }


        public string MobileLogToken
        {
            get
            {
                var mobileLogToken = ConfigurationManager.AppSettings["mobileLogToken"];
                return mobileLogToken;
            }
        }

        public bool IsDowntime
        {
            get { return Convert.ToBoolean(ConfigurationManager.AppSettings["isDowntime"]); }
        }

        public string LogentrieAccountKey
        {
            get { return ConfigurationManager.AppSettings["logentriesAccountKey"]; }
        }

        public string LogentriesHostName
        {
            get { return ConfigurationManager.AppSettings["logentriesHostName"]; }
        }

        public string LogentriesLogName
        {
            get { return ConfigurationManager.AppSettings["logentriesLogName"]; }
        }




        public  string AdminPanelUsername
        {
            get
            {
                return ConfigurationManager.AppSettings["adminPanelUsername"];
            }
        }

        public  string AdminPanelPassword
        {
            get
            {
                return ConfigurationManager.AppSettings["adminPanelPassword"];
            }
        }


        public  string HttpsApiUsername
        {
            get
            {
                return ConfigurationManager.AppSettings["httpsApiUsername"];
            }
        }

        public  string HttpsApiPassword
        {
            get
            {
                return ConfigurationManager.AppSettings["httpsApiPassword"];
            }
        }


        public  string ApiUsername
        {
            get
            {
                var apiUserName = ConfigurationManager.AppSettings["apiUsername"];
                return apiUserName;
            }

        }

        public  string ApiPassword
        {
            get
            {
                var apiPassword = ConfigurationManager.AppSettings["apiPassword"];
                return apiPassword;
            }
        }

        public  string NsHashSecretKey
        {
            get
            {
                var nsHashSecretKey = ConfigurationManager.AppSettings["nsHashSecretKey"];
                return nsHashSecretKey;
            }
        }


        public  string IapSandBoxUrl
        {
            get
            {
                var iapSandBoxUrl = ConfigurationManager.AppSettings["iapSandboxUrl"];
                return iapSandBoxUrl;
            }
        }

        public  string IapProductionUrl
        {
            get
            {
                var iapProductionUrl = ConfigurationManager.AppSettings["iapProductionUrl"];
                return iapProductionUrl;
            }
        }

        public  string InAppBillingGoogleOauthUrl
        {
            get { return ConfigurationManager.AppSettings["inAppBillingGoogleOauthUrl"]; }
        }

        public  string InAppBillingClientId
        {
            get { return ConfigurationManager.AppSettings["inAppBillingClientId"]; }
        }

        public  string InAppBillingClientSecret
        {
            get { return ConfigurationManager.AppSettings["inAppBillingClientSecret"]; }
        }

        public  string InAppBillingRefreshToken
        {
            get { return ConfigurationManager.AppSettings["inAppBillingRefreshToken"]; }
        }

        public  string InAppBillingVerifyPurchasedProductUrl
        {
            get { return ConfigurationManager.AppSettings["inAppBillingVerifyPurchasedProductUrl"]; }
        }

        public  string InAppBillingVerifySubscriptionUrl
        {
            get { return ConfigurationManager.AppSettings["inAppBillingVerifySubscriptionUrl"]; }
        }


        public  string ParseApplicationId
        {
            get { return ConfigurationManager.AppSettings["parseApplicationId"]; }
        }

        public  string ParseRestApiKey
        {
            get { return ConfigurationManager.AppSettings["parseRestApiKey"]; }
        }

    }//end class
}