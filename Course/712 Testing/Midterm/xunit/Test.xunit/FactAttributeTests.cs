using System.Collections.Generic;
using System.Reflection;
using Xunit;
using Xunit.Sdk;

public class FactAttributeTests
{
    [Fact]
    public void DefaultFactAttributeValues()
    {
        FactAttribute attrib = new FactAttribute();
        MethodInfo method = typeof(FactAttributeTests).GetMethod("DummyFactMethod");

        var commands = new List<ITestCommand>(attrib.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, commands.Count);
        var testCommand = Assert.IsType<TestCommand>(commands[0]);
        Assert.Equal("FactAttributeTests", testCommand.TypeName);
        Assert.Equal("DummyFactMethod", testCommand.MethodName);
        Assert.Equal("FactAttributeTests.DummyFactMethod", testCommand.DisplayName);
    }

    [Fact]
    public void NameOnFactAttributeOverridesDisplayName()
    {
        FactAttribute attrib = new FactAttribute { DisplayName = "Custom display name" };
        MethodInfo method = typeof(FactAttributeTests).GetMethod("DummyFactMethod");

        var commands = new List<ITestCommand>(attrib.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, commands.Count);
        var testCommand = Assert.IsType<TestCommand>(commands[0]);
        Assert.Equal("Custom display name", testCommand.DisplayName);
    }

    [Fact]
    public void SettingSkipReasonGeneratesSkipCommand()
    {
        FactAttribute attrib = new FactAttribute { Skip = "My Skip Reason" };
        MethodInfo method = typeof(FactAttributeTests).GetMethod("DummyFactMethod");

        var commands = new List<ITestCommand>(attrib.CreateTestCommands(Reflector.Wrap(method)));

        Assert.Equal(1, commands.Count);
        var skipCommand = Assert.IsType<SkipCommand>(commands[0]);
        Assert.Equal("My Skip Reason", skipCommand.Reason);
    }

    public void DummyFactMethod() { }
}