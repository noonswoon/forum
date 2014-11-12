using System.Collections.Generic;

namespace Noonswoon.Community.Configuration
{
    public interface IXmlConfigQuery
    {
        IList<XmlConfig> LoadAllXmlConfigsFromDatabase();
        XmlConfig GetXmlConfigFromDatabase(string sourceName);
        void AddOrUpdateXmlConfig(XmlConfig xmlConfig);
    }
}