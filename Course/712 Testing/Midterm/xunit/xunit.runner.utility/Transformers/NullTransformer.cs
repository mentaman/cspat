using System.IO;

namespace Xunit
{
    /// <summary>
    /// An implementation of <see cref="IResultXmlTransform"/> which writes the
    /// XML to a file without any transformation applied.
    /// </summary>
    public class NullTransformer : IResultXmlTransform
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="NullTransformer"/> class.
        /// </summary>
        /// <param name="filename">The output filename.</param>
        public NullTransformer(string filename)
        {
            Filename = filename;
            OutputType = "XML";
        }

        /// <inheritdoc/>
        public string Filename { get; private set; }

        /// <inheritdoc/>
        public string OutputType { get; private set; }

        /// <inheritdoc/>
        public void Transform(string xml)
        {
            File.WriteAllText(Filename, xml);
        }
    }
}
