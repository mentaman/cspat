using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace pex.utility
{
    public static class PexRepository
    {
        private static Dictionary<string,object > repo = new Dictionary<string, object>();

        public static void Store(string key, object value)
        {
            repo[key] = value;
        }

        public static T Get<T>(string key)
        {
            return (T) repo[key];
        }
    }
}
