using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class AmazonConfig : ConfigSectionBase
    {
        public AmazonConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        public string S3AccessKey { get; set; }
        public string S3SecretKey { get; set; }
        public string S3PhotoBucketName { get; set; }
        public string S3BackupBucketName { get; set; }
        public string S3CampaignsBucketName { get; set; }
    }
}
