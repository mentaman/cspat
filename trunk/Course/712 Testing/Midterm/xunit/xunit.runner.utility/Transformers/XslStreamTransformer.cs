using System.IO;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace Xunit
{
    /// <summary>
    /// An implementation of <see cref="IResultXmlTransform"/> which writes the
    /// XML to a file after applying the XSL stylesheet in the given stream.
    /// </summary>
    public class XslStreamTransformer : IResultXmlTransform
    {
        private readonly Stream xslStream;

        /// <summary>
        /// Initializes a new instance of the <see cref="XslStreamTransformer"/> class.
        /// </summary>
        /// <param name="xslStream">The stream with the XSL stylesheet.</param>
        /// <param name="filename">The output filename.</param>
        /// <param name="outputType">The output type.</param>
        public XslStreamTransformer(Stream xslStream, string filename, string outputType)
        {
            this.xslStream = xslStream;
            Filename = filename;
            OutputType = outputType;
        }

        /// <inheritdoc/>
        public string Filename { get; private set; }

        /// <inheritdoc/>
        public string OutputType { get; private set; }

        /// <inheritdoc/>
        public void Transform(string xml)
        {
            using (StreamReader reader = new StreamReader(xslStream))
            {
                XPathDocument doc = new XPathDocument(new StringReader(xml));
                XslCompiledTransform xslTransform = new XslCompiledTransform();
                XmlTextReader transformReader = new XmlTextReader(reader);
                xslTransform.Load(transformReader);

                using (FileStream outStream = new FileStream(Filename, FileMode.Create))
                    xslTransform.Transform(doc, null, outStream);
            }
        }
    }
}