using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Xml;
using Xunit;
using Xunit.Sdk;

public class OutputCaptureCommandTests : IDisposable
{
    TraceListener[] oldListeners;

    public OutputCaptureCommandTests()
    {
        oldListeners = Trace.Listeners.OfType<TraceListener>().ToArray();
        Trace.Listeners.Clear();
    }

    public void Dispose()
    {
        Trace.Listeners.Clear();
        Trace.Listeners.AddRange(oldListeners);
    }

    [Fact]
    public void ConsoleOutAndErrorAreReplacedDuringTestExecution()
    {
        TextWriter originalOut = Console.Out;
        TextWriter originalError = Console.Error;

        try
        {
            TextWriter newOut = new StringWriter();
            TextWriter newError = new StringWriter();
            Console.SetOut(newOut);
            Console.SetError(newError);
            StubCommand cmd = new StubCommand();
            OutputCaptureCommand outputCmd = new OutputCaptureCommand(cmd);

            outputCmd.Execute(null);

            Assert.Empty(newOut.ToString());
            Assert.Empty(newError.ToString());
        }
        finally
        {
            Console.SetOut(originalOut);
            Console.SetError(originalError);
        }
    }

    [Fact]
    public void ConsoleOutAndErrorAndTraceIsCapturedAndPlacedInMethodResult()
    {
        const string expected =
@"Standard Output
Standard Error
Trace
";

        StubCommand cmd = new StubCommand();
        OutputCaptureCommand outputCmd = new OutputCaptureCommand(cmd);

        MethodResult result = outputCmd.Execute(null);

        Assert.Equal(expected, result.Output);
    }

    class StubCommand : ITestCommand
    {
        public object TestClass;

        public string DisplayName
        {
            get { return null; }
        }

        public bool ShouldCreateInstance
        {
            get { return true; }
        }

        public MethodResult Execute(object testClass)
        {
            TestClass = testClass;
            Console.WriteLine("Standard Output");
            Console.Error.WriteLine("Standard Error");
            Trace.WriteLine("Trace");
            MethodInfo method = typeof(StubCommand).GetMethod("Execute");
            return new PassedResult(Reflector.Wrap(method), null);
        }

        public XmlNode ToStartXml()
        {
            return null;
        }
    }
}