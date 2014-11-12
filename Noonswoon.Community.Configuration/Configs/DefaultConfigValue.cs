using System;

namespace Noonswoon.Community.Configuration.Configs
{
    [AttributeUsage(AttributeTargets.Property)]
    public class DefaultConfigValue : Attribute
    {
        public object DefaulValue { get; private set; }


        public DefaultConfigValue(object defaultValue)
        {
            DefaulValue = defaultValue;
        }
    }
}
