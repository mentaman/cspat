using System.Collections.Generic;
using System.Reflection;
using Xunit;
using Xunit.Sdk;

public class TestAttributeTests
{
    [Fact]
    public void SkipMethod()
    {
        MethodInfo method = typeof(TestAttributeTests).GetMethod("TestMethod");
        FactAttribute attribute = new FactAttribute();
        attribute.Skip = "Skip Reason";

        List<ITestCommand> result = new List<ITestCommand>(attribute.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, result.Count);
        Assert.IsType<SkipCommand>(result[0]);
    }

    [Fact]
    public void TestMethod()
    {
        MethodInfo method = typeof(TestAttributeTests).GetMethod("TestMethod");
        FactAttribute attribute = new FactAttribute();

        List<ITestCommand> result = new List<ITestCommand>(attribute.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, result.Count);
        Assert.IsType<TestCommand>(result[0]);
    }

    [Fact]
    public void TimeoutMethod()
    {
        MethodInfo method = typeof(TestAttributeTests).GetMethod("TestMethod");
        FactAttribute attribute = new FactAttribute();
        attribute.Timeout = 500;

        List<ITestCommand> commands = new List<ITestCommand>(attribute.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, commands.Count);
        TimeoutCommand timeoutCommand = Assert.IsType<TimeoutCommand>(commands[0]);
        Assert.Equal(500, timeoutCommand.Timeout);
        Assert.IsType<TestCommand>(timeoutCommand.InnerCommand);
    }
}