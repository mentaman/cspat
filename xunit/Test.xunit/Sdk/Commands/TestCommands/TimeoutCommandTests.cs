using System.Threading;
using System.Xml;
using Xunit;
using Xunit.Sdk;

public class TimeoutCommandTests
{
    [Fact]
    public void TestFinshedOnTimePassedResult()
    {
        DummyCommand dummyCommand = new DummyCommand();
        TimeoutCommand command = new TimeoutCommand(dummyCommand, 10000, dummyCommand.GetMethodInfo());

        MethodResult result = command.Execute(null);

        Assert.IsType<PassedResult>(result);
    }

    [Fact]
    public void TestTookTooLongFailedResult()
    {
        DummyCommand dummyCommand = new DummyCommand();
        TimeoutCommand command = new TimeoutCommand(dummyCommand, 20, dummyCommand.GetMethodInfo());

        MethodResult result = command.Execute(null);

        FailedResult failedResult = Assert.IsType<FailedResult>(result);
        Assert.Equal("Test execution time exceeded: 20ms", failedResult.Message);
    }

    internal class DummyCommand : ITestCommand
    {
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
            Thread.Sleep(500);
            return new PassedResult(GetMethodInfo(), null);
        }

        public XmlNode ToStartXml()
        {
            return null;
        }

        public IMethodInfo GetMethodInfo()
        {
            return Reflector.Wrap(GetType().GetMethod("Execute"));
        }
    }
}