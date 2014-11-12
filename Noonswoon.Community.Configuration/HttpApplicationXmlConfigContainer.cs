using System.IO;
using System.Linq;
using System.Web;
using System.Xml;
using Nini.Config;

namespace Noonswoon.Community.Configuration
{
    public class HttpApplicationXmlConfigContainer : IXmlConfigContainer
    {
        private readonly HttpApplicationState _httpApplicationState;

        public HttpApplicationXmlConfigContainer(HttpApplicationState httpApplicationState)
        {
            _httpApplicationState = httpApplicationState;
        }

        public void AddOrUpdate(string key, XmlConfigSource configSource)
        {
            //to lower
            key = key.ToLower();

            var xmlConfigSource = Get(key);
            _httpApplicationState.Lock();
            if (xmlConfigSource != null)
            {
                //update
                _httpApplicationState[key] = configSource;
            }
            else
            {
                //create new 
                _httpApplicationState.Add(key, configSource);
            }
            _httpApplicationState.UnLock();
        }

        public XmlConfigSource Get(string key)
        {
            //to lower
            key = key.ToLower();
            XmlConfigSource xmlConfigSource = null;
            if (_httpApplicationState.AllKeys.Contains(key))
            {
                //we need to create new object
                //copy to new object
                var originalXmlConfigSource = (XmlConfigSource)_httpApplicationState[key];
                string xmlConfigSourceString;
                using (var stringWriter = new StringWriter())
                {
                    originalXmlConfigSource.Save(stringWriter);
                    xmlConfigSourceString = stringWriter.ToString();
                }
                var xmlReader = XmlReader.Create(new StringReader(xmlConfigSourceString));
                xmlConfigSource = new XmlConfigSource(xmlReader);
            }

            return xmlConfigSource;
        }

    }
}