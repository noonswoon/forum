using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public  class EmailConfig :ConfigSectionBase 
    {
        public EmailConfig(XmlConfigSource configSource) : base(configSource)
        {

        }

        [GlobalConfig]
        public  string SendgridUsername {get;set;}
        
        [GlobalConfig]
        public string SendgridPassword { get; set; }

        [GlobalConfig]
        public string AdminEmail { get; set; }

        [GlobalConfig]
        public string DevEmail { get; set; }

        [GlobalConfig]
        public  string UnitTestEmail { get; set; }

        [GlobalConfig]
        public  string SupportEmail { get; set; }

        [GlobalConfig]
        public  string BlockedUserEmail { get; set; }

        [GlobalConfig]
        public  string DefaultLocationEmail { get; set; }


        [GlobalConfig]
        public string DefaultGenderEmail { get; set; }

        [GlobalConfig]
        public  string NullEmail { get; set; }

        [GlobalConfig]
        public  string SystemEmail { get; set; }

        [GlobalConfig]
        public  string NullDateOfBirth { get; set; }

        [GlobalConfig]
        public string NoonswoonEmailAddress { get; set; }

        [GlobalConfig]
        public  string NoonswoonEmailName { get; set; }

        [GlobalConfig]
        public string[] ToGetStatisticForAisEmails { get; set; }

        [GlobalConfig]
        public string ContactEmail { get; set; }

        [GlobalConfig]
        [DefaultConfigValue("noreply@noonswoonapp.com")]
        public string NoReplyEmail { get; set; }
    }
}
