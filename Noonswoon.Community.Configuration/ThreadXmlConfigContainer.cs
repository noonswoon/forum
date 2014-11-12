using System.Collections;
using System.IO;
using System.Xml;
using Nini.Config;

namespace Noonswoon.Community.Configuration
{
    public class ThreadXmlConfigContainer : IXmlConfigContainer
    {
        //private ILog _log = LogManager.GetLogger(typeof(ThreadXmlConfigContainer));
        private static readonly Hashtable _sourceHashTable = new Hashtable();
        private object _lock = new object();

        public void AddOrUpdate(string sourceName, XmlConfigSource configSource)
        {
            sourceName = sourceName.ToLower();
            lock (_lock)
            {
                if (Get(sourceName) != null)
                {
                    //update 
                    //replace existing in hash table
                    _sourceHashTable[sourceName] = configSource;
                    //_log.DebugFormat("update key: {0}", sourceName);
                }
                else
                {
                    //create new in hash table
                    _sourceHashTable.Add(sourceName, configSource);
                    //_log.DebugFormat("add key: {0}", sourceName);
                }
            }
        }

        /// <summary>
        /// Gets the specified key.
        /// </summary>
        /// <param name="sourceName">The key.</param>
        /// <returns></returns>
        public XmlConfigSource Get(string sourceName)
        {
            sourceName = sourceName.ToLower();
            XmlConfigSource xmlConfigSource = null;
            //var threadName = GetThreadName();
            if (_sourceHashTable.Contains(sourceName))
            {
                //_log.DebugFormat("try get configSource key: {0}", sourceName);

                //we need to create new object
                //copy to new object
                var originalXmlConfigSource =(XmlConfigSource) _sourceHashTable[sourceName];
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