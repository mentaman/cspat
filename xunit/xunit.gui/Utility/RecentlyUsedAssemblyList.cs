using System;
using System.Collections;
using System.Collections.Generic;
using Microsoft.Win32;

namespace Xunit.Gui
{
    public class RecentlyUsedAssemblyList : IEnumerable<RecentlyUsedAssembly>
    {
        public const string RECENT_ASSEMBLIES_KEY_NAME = "RecentAssemblies";
        public const string XUNIT_KEY_NAME = @"Software\Microsoft\xUnit.net";
        
        List<RecentlyUsedAssembly> assemblies;
        int maxItems;

        public RecentlyUsedAssemblyList() : this(5) { }

        public RecentlyUsedAssemblyList(int maxItems)
        {
            this.maxItems = maxItems;
            assemblies = LoadAssemblyList();
        }

        public void Add(string assemblyFilename, string configFilename)
        {
            RecentlyUsedAssembly assembly = new RecentlyUsedAssembly
            {
                AssemblyFilename = assemblyFilename,
                ConfigFilename = configFilename
            };

            // Insert at the front
            assemblies.Insert(0, assembly);

            // Delete if you find a duplicate
            for (int index = 1; index < assemblies.Count; ++index)
                if (assemblies[index].Equals(assembly))
                    assemblies.RemoveAt(index);

            // Delete off the end if you have too many
            if (assemblies.Count > maxItems)
                assemblies.RemoveAt(assemblies.Count - 1);

            // Save
            SaveAssemblyList(assemblies);
        }

        public static void ClearAssemblyList()
        {
            try
            {
                using (var xunitKey = Registry.CurrentUser.CreateSubKey(XUNIT_KEY_NAME))
                    xunitKey.DeleteSubKeyTree(RECENT_ASSEMBLIES_KEY_NAME);
            }
            catch (ArgumentException) { }
        }

        public IEnumerator<RecentlyUsedAssembly> GetEnumerator()
        {
            return assemblies.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public static List<RecentlyUsedAssembly> LoadAssemblyList()
        {
            var items = new List<RecentlyUsedAssembly>();

            using (var xunitKey = Registry.CurrentUser.CreateSubKey(XUNIT_KEY_NAME))
            using (var recentKey = xunitKey.CreateSubKey(RECENT_ASSEMBLIES_KEY_NAME))
                for (int index = 0; ; ++index)
                    using (var itemKey = recentKey.OpenSubKey(index.ToString()))
                    {
                        if (itemKey == null)
                            break;

                        if (itemKey != null)
                        {
                            string assemblyFilename = (string)itemKey.GetValue("AssemblyFilename");
                            string configFilename = (string)itemKey.GetValue("ConfigFilename");

                            if (assemblyFilename != null)
                                items.Add(new RecentlyUsedAssembly
                                {
                                    AssemblyFilename = assemblyFilename,
                                    ConfigFilename = configFilename
                                });
                        }
                    }

            return items;
        }

        public static void SaveAssemblyList(List<RecentlyUsedAssembly> items)
        {
            ClearAssemblyList();

            using (var xunitKey = Registry.CurrentUser.CreateSubKey(XUNIT_KEY_NAME))
            using (var recentKey = xunitKey.CreateSubKey(RECENT_ASSEMBLIES_KEY_NAME))
                for (int index = 0; index < items.Count; ++index)
                    using (var itemKey = recentKey.CreateSubKey(index.ToString()))
                    {
                        RecentlyUsedAssembly item = items[index];

                        itemKey.SetValue("AssemblyFilename", item.AssemblyFilename);

                        if (!String.IsNullOrEmpty(item.ConfigFilename))
                            itemKey.SetValue("ConfigFilename", item.ConfigFilename);
                        else if (itemKey.GetValue("ConfigFilename") != null)
                            itemKey.DeleteValue("ConfigFilename");
                    }
        }
    }
}