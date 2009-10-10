using System.Collections.Generic;
using System.Reflection;
using Xunit;
using Xunit.Sdk;

public class TestCommandFactoryTests
{
    [Fact]
    public void CallsTestClassCommandToGetTestCommandsAndWrapsTheminTimedCommands()
    {
        MethodInfo method = typeof(TestCommandFactoryTests).GetMethod("PublicTestMethod");
        List<ITestCommand> testCommands = new List<ITestCommand>();
        StubTestClassCommand classCommand = new StubTestClassCommand();
        testCommands.Add(new StubTestCommand());
        classCommand.EnumerateTestCommands__Result = testCommands;

        List<ITestCommand> result = new List<ITestCommand>(TestCommandFactory.Make(classCommand, Reflector.Wrap(method)));

        Assert.Same(method, classCommand.EnumerateTestCommands_TestMethod.MethodInfo);
        Assert.Equal(testCommands.Count, result.Count);
        ExceptionWrapperCommand exceptionWrapperCommand = Assert.IsType<ExceptionWrapperCommand>(result[0]);
        TraceAssertCommand traceAssertCommand = Assert.IsType<TraceAssertCommand>(exceptionWrapperCommand.InnerCommand);
        OutputCaptureCommand outputCaptureCommand = Assert.IsType<OutputCaptureCommand>(traceAssertCommand.InnerCommand);
        TimedCommand timedCommand = Assert.IsType<TimedCommand>(outputCaptureCommand.InnerCommand);
        LifetimeCommand lifetimeCommand = Assert.IsType<LifetimeCommand>(timedCommand.InnerCommand);
        BeforeAfterCommand beforeAfterCommand = Assert.IsType<BeforeAfterCommand>(lifetimeCommand.InnerCommand);
        Assert.Same(testCommands[0], beforeAfterCommand.InnerCommand);
    }

    [Fact]
    public void DoesNotIncludeCreationCommandWhenTestCommandSaysNotToCreateInstance()
    {
        MethodInfo method = typeof(TestCommandFactoryTests).GetMethod("PublicTestMethod");
        List<ITestCommand> testCommands = new List<ITestCommand>();
        StubTestClassCommand classCommand = new StubTestClassCommand();
        StubTestCommand testCommand = new StubTestCommand();
        testCommand.ShouldCreateInstance__Result = false;
        testCommands.Add(testCommand);
        classCommand.EnumerateTestCommands__Result = testCommands;

        List<ITestCommand> result = new List<ITestCommand>(TestCommandFactory.Make(classCommand, Reflector.Wrap(method)));

        Assert.Same(method, classCommand.EnumerateTestCommands_TestMethod.MethodInfo);
        Assert.Equal(testCommands.Count, result.Count);
        ExceptionWrapperCommand exceptionWrapperCommand = Assert.IsType<ExceptionWrapperCommand>(result[0]);
        TraceAssertCommand traceAssertCommand = Assert.IsType<TraceAssertCommand>(exceptionWrapperCommand.InnerCommand);
        OutputCaptureCommand outputCaptureCommand = Assert.IsType<OutputCaptureCommand>(traceAssertCommand.InnerCommand);
        TimedCommand timedCommand = Assert.IsType<TimedCommand>(outputCaptureCommand.InnerCommand);
        BeforeAfterCommand beforeAfterCommand = Assert.IsType<BeforeAfterCommand>(timedCommand.InnerCommand);
        Assert.Same(testCommands[0], beforeAfterCommand.InnerCommand);
    }

    public void PublicTestMethod() { }
}