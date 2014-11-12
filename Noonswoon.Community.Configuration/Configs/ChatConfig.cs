using Nini.Config;

namespace Noonswoon.Community.Configuration.Configs
{
    public class ChatConfig : ConfigSectionBase
    {
        public ChatConfig(XmlConfigSource configSource)
            : base(configSource)
        {
        }

        [GlobalConfig]
        public int ChatPageSize { get; set; }

        [GlobalConfig]
        public string PubnubSubscribeKey { get; set; }

        [GlobalConfig]
        public string PubnubPublishKey { get; set; }

        [GlobalConfig]
        [DefaultConfigValue("0 0 1 * * ?")]
        public string NotifyUnreadChatStartLocalTime { get; set; }
    }//end 
}