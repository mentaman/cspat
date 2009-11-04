using Xunit;

public class StubTransformer : IResultXmlTransform
{
    public bool Transform__Called;
    public string Transform_Xml;

    public string Filename
    {
        get { return "filename"; }
    }

    public string OutputType
    {
        get { return "output type"; }
    }

    public void Transform(string xml)
    {
        Transform__Called = true;
        Transform_Xml = xml;
    }
}
