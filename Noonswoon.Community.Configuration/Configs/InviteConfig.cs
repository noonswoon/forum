using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class InviteConfig : ConfigSectionBase
    {
        public InviteConfig(XmlConfigSource configSource)
            : base(configSource)
        {

        }

        /// <summary>
        /// Gets the invites signup.
        /// </summary>
        [GlobalConfig]
        [DefaultConfigValue("5")]
        public int NumberOfInvitesSignup { get; set; }

    }
}
