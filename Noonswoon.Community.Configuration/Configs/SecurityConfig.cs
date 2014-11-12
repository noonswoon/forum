using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class SecurityConfig : ConfigSectionBase
    {
        public SecurityConfig(XmlConfigSource configSource)
            : base(configSource)
        {

        }

        public string AdminPanelUsername { get; set; }
        public string AdminPanelPassword { get; set; }

        public string HttpsApiUsername { get; set; }
        public string HttpsApiPassword { get; set; }

        public string NsHashSecretKey { get; set; }

        public string EditorUsername { get; set; }
        public string EditorPassword { get; set; }
    }
}
