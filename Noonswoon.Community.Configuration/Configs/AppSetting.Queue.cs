using System.Configuration;
using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class QueueConfig
    {
        private readonly XmlConfigSource _configSource;

        public QueueConfig(XmlConfigSource configSource)
        {
            _configSource = configSource;
        }

        public string SaveFacebookFriendQueue
        {
            get
            {
                return "saveFacebookFriendQueue";
            }

        }

        public static string SaveFriendClosenessQueue
        {
            get
            {
                return "saveFriendClosenessQueue";
            }

        }


        public string SaveProfilePhotosQueue
        {
            get
            {
                return "saveProfilePhotosQueue";
            }

        }

        public string SendMailQueue
        {

            get { return "sendMailQueue"; }
        }


        public string ServiceQueue
        {
            get { return "serviceQueue"; }
        }

        public string RabbitMqUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["CLOUDAMQP_URL"];
            }
        }

        public int NumberOfConcurrentQueueConnection
        {
            get
            {
                return _configSource.Configs["QueueConfig"].GetInt("numberOfConcurrentQueueConnection");

            }
        }
    }

}