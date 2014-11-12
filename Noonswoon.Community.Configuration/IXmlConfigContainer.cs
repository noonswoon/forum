using Nini.Config;

namespace Noonswoon.Community.Configuration
{
    public interface IXmlConfigContainer
    {
        void AddOrUpdate(string sourceName, XmlConfigSource configSource);
        XmlConfigSource Get(string sourceName);
    }
}