using System;
using System.Reflection;
using System.Xml;
using Xunit;
using Xunit.Sdk;

public class ExceptionWrapperCommandTests
{
    [Fact]
    public void ShouldWrapExceptionDetailsWhenExceptionIsThrown()
    {
        ExceptionThrowingCommand innerCmd = new ExceptionThrowingCommand();
        MethodInfo method = typeof(ExceptionThrowingCommand).GetMethod("Execute");
        ExceptionWrapperCommand command = new ExceptionWrapperCommand(innerCmd, Reflector.Wrap(method));

        MethodResult result = command.Execute(null);

        FailedResult failed = Assert.IsType<FailedResult>(result);
        Assert.Equal(method.Name, failed.MethodName);
        Assert.Equal(method.DeclaringType.FullName, failed.TypeName);
        Assert.Equal(typeof(TargetInvocationException).FullName, failed.ExceptionType);
        Assert.Contains("ExceptionThrowingCommand.Execute", failed.StackTrace);
    }

    class ExceptionThrowingCommand : ITestCommand
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
            throw new TargetInvocationException(new Exception());
        }

        public XmlNode ToStartXml()
        {
            return null;
        }
    }
}