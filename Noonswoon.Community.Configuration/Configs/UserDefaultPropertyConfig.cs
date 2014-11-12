using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class UserDefaultPropertyConfig : ConfigSectionBase
    {
        public UserDefaultPropertyConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        [GlobalConfig]
        public string DefaultCountry { get; set; }

        [GlobalConfig]
        public string DefaultCity { get; set; }

        [GlobalConfig]
        public float DefaultLatitude { get; set; }

        [GlobalConfig]
        public float DefaultLongitude { get; set; }

        [GlobalConfig]
        public int DefaultFreeCredit { get; set; }

        [GlobalConfig]
        public int DefaultAisCustomerFreeCredit { get; set; }

        [GlobalConfig]
        public float DefaultUserRate { get; set; }

        [GlobalConfig]
        public int DefaultAge { get; set; }

        [GlobalConfig]
        public int DefaultFemaleFriendsCount { get; set; }

        [GlobalConfig]
        public int DefaultMaleFriendsCount { get; set; }

        [GlobalConfig]
        public int DefaultFriendsFromCountryCount { get; set; }

        [GlobalConfig]
        public float DefaultFemaleHeight { get; set; }

        [GlobalConfig]
        public float DefaultMaleHeight { get; set; }

    }//end class

}