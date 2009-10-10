using System;
using System.IO;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace Xunit.ConsoleClient
{
    class SummaryTransformer : IResultXmlTransform
    {
        public string Filename
        {
            get { return null; }
        }

        public string OutputType
        {
            get { return null; }
        }

        public void Transform(string xml)
        {
            Console.WriteLine();

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(xml);

            XmlNode assemblyNode = doc.SelectSingleNode("assembly");
            Console.WriteLine("Total tests: {0}, Failures: {1}, Skipped: {2}, Time: {3} seconds",
                              assemblyNode.Attributes["total"].Value,
                              assemblyNode.Attributes["failed"].Value,
                              assemblyNode.Attributes["skipped"].Value,
                              assemblyNode.Attributes["time"].Value);

            PrintNodes("Classes failed:", doc.SelectNodes("//class[failure]"));
            PrintNodes("Tests failed:", doc.SelectNodes("//test[@result='Fail']"));
            PrintNodes("Tests skipped:", doc.SelectNodes("//test[@result='Skip']"));
        }

        static void PrintNodes(string message, XmlNodeList nodes)
        {
            if (nodes.Count == 0)
                return;

            Console.WriteLine();
            Console.WriteLine(message);

            for (int idx = 0; idx < nodes.Count; idx++)
            {
                XmlNode node = nodes[idx];
                Console.WriteLine();
                Console.WriteLine("{0}) {1} : {2}",
                                  idx + 1,
                                  node.Attributes["name"].Value,
                                  node.SelectSingleNode("child::node()/message").InnerText);

                XmlNode stackTrace = node.SelectSingleNode("child::node()/stack-trace");
                if (stackTrace != null)
                {
                    Console.WriteLine("Stack Trace:");
                    Console.WriteLine(StackFrameTransformer.TransformStack(stackTrace.InnerText));
                }
            }
        }
    }
}