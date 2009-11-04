using System;
using System.Collections.Generic;
using System.IO;
using System.Xml;

namespace Xunit
{
    /// <summary>
    /// Represents an xUnit Test Project file (.xunit file)
    /// </summary>
    public class XunitProject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="XunitProject"/> class.
        /// </summary>
        public XunitProject()
        {
            Assemblies = new List<XunitProjectAssembly>();
        }

        /// <summary>
        /// Gets or sets the assemblies in the project.
        /// </summary>
        public List<XunitProjectAssembly> Assemblies { get; set; }

        static string GetRelativePath(string directory, string filename)
        {
            if (filename.StartsWith(directory, StringComparison.OrdinalIgnoreCase))
                return filename.Substring(directory.Length).TrimStart('\\');

            return filename;
        }

        /// <summary>
        /// Loads an xUnit.net Test Project file from disk.
        /// </summary>
        /// <param name="filename">The test project filename</param>
        public static XunitProject Load(string filename)
        {
            XunitProject result = new XunitProject();

            filename = Path.GetFullPath(filename);
            string directory = Path.GetDirectoryName(filename);
            XmlDocument doc = new XmlDocument();

            try
            {
                doc.Load(filename);
            }
            catch (XmlException)
            {
                throw new ArgumentException("The xUnit.net project file appears to be malformed.", "filename");
            }

            foreach (XmlNode assemblyNode in doc.SelectNodes("xunit/assemblies/assembly"))
            {
                XunitProjectAssembly assembly = new XunitProjectAssembly
                {
                    AssemblyFilename = Path.GetFullPath(Path.Combine(directory, assemblyNode.Attributes["filename"].Value))
                };

                if (assemblyNode.Attributes["config-filename"] != null)
                    assembly.ConfigFilename = Path.GetFullPath(Path.Combine(directory, assemblyNode.Attributes["config-filename"].Value));
                if (assemblyNode.Attributes["shadow-copy"] != null)
                    assembly.ShadowCopy = Boolean.Parse(assemblyNode.Attributes["shadow-copy"].Value);

                foreach (XmlNode outputNode in assemblyNode.SelectNodes("output"))
                    assembly.Output.Add(outputNode.Attributes["type"].Value,
                                        Path.GetFullPath(Path.Combine(directory, outputNode.Attributes["filename"].Value)));

                result.Assemblies.Add(assembly);
            }

            if (result.Assemblies.Count == 0)
                throw new ArgumentException("The xUnit.net project file has no assemblies.", "filename");

            return result;
        }

        /// <summary>
        /// Saves the xUnit.net Test Project file to disk.
        /// </summary>
        /// <param name="filename">The test project filename</param>
        public void Save(string filename)
        {
            if (Assemblies.Count == 0)
                throw new InvalidOperationException("Cannot save an empty project");

            string directory = Path.GetDirectoryName(Path.GetFullPath(filename));
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<?xml version='1.0' encoding='utf-8'?><xunit><assemblies/></xunit>");
            XmlNode assembliesNode = doc.SelectSingleNode("xunit/assemblies");

            foreach (XunitProjectAssembly assembly in Assemblies)
            {
                XmlElement assemblyNode = doc.CreateElement("assembly");

                XmlAttribute filenameAttribute = doc.CreateAttribute("filename");
                filenameAttribute.Value = GetRelativePath(directory, assembly.AssemblyFilename);
                assemblyNode.Attributes.Append(filenameAttribute);

                if (!String.IsNullOrEmpty(assembly.ConfigFilename))
                {
                    XmlAttribute configFilenameAttribute = doc.CreateAttribute("config-filename");
                    configFilenameAttribute.Value = GetRelativePath(directory, assembly.ConfigFilename);
                    assemblyNode.Attributes.Append(configFilenameAttribute);
                }

                XmlAttribute shadowCopyAttribute = doc.CreateAttribute("shadow-copy");
                shadowCopyAttribute.Value = assembly.ShadowCopy.ToString().ToLowerInvariant();
                assemblyNode.Attributes.Append(shadowCopyAttribute);

                foreach (KeyValuePair<string, string> kvp in assembly.Output)
                {
                    XmlElement outputElement = doc.CreateElement("output");
                    assemblyNode.AppendChild(outputElement);

                    XmlAttribute outputTypeAttribute = doc.CreateAttribute("type");
                    outputTypeAttribute.Value = kvp.Key;
                    outputElement.Attributes.Append(outputTypeAttribute);

                    XmlAttribute outputFilenameAttribute = doc.CreateAttribute("filename");
                    outputFilenameAttribute.Value = GetRelativePath(directory, kvp.Value);
                    outputElement.Attributes.Append(outputFilenameAttribute);
                }

                assembliesNode.AppendChild(assemblyNode);
            }

            doc.Save(filename);
        }
    }
}