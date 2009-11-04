using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;

public class TestClassCommandFactoryTests
{
    [Fact]
    public void AbstractTestClassReturnsNull()
    {
        ITestClassCommand command = TestClassCommandFactory.Make(typeof(AbstractTestClass));

        Assert.Null(command);
    }

    [Fact]
    public void NoTestMethodsShouldReturnNull()
    {
        Type type = typeof(StubClass);
        ITestClassCommand command = TestClassCommandFactory.Make(type);

        Assert.Null(command);
    }

    [Fact]
    public void RunWithClassReturnsTypeToRunWith()
    {
        ITestClassCommand command = TestClassCommandFactory.Make(typeof(MyRunWithTestClass));

        Assert.IsType<MyRunWith>(command);
        Assert.Equal(typeof(MyRunWithTestClass), command.TypeUnderTest.Type);
    }

    [Fact]
    public void RunWithForInvalidTestClassCommandReturnsNull()
    {
        ITestClassCommand command = TestClassCommandFactory.Make(typeof(MyInvalidRunWithTestClass));

        Assert.Null(command);
    }

    [Fact]
    public void StubTestClassMakesTestClassCommand()
    {
        Type testClassType = typeof(StubTestClass);
        ITestClassCommand command = TestClassCommandFactory.Make(testClassType);

        Assert.IsType<TestClassCommand>(command);
        Assert.Equal(typeof(StubTestClass), command.TypeUnderTest.Type);
    }

    internal abstract class AbstractTestClass
    {
        [Fact]
        public void TestMethod() { }
    }

    internal class MyInvalidRunWith { }

    [RunWith(typeof(MyInvalidRunWith))]
    internal class MyInvalidRunWithTestClass { }

    internal class MyRunWith : ITestClassCommand
    {
        ITypeInfo typeUnderTest;

        public object ObjectUnderTest
        {
            get { return null; }
        }

        public ITypeInfo TypeUnderTest
        {
            get { return typeUnderTest; }
            set { typeUnderTest = value; }
        }

        public int ChooseNextTest(ICollection<IMethodInfo> testsLeftToRun)
        {
            throw new NotImplementedException();
        }

        public Exception ClassFinish()
        {
            throw new NotImplementedException();
        }

        public Exception ClassStart()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ITestCommand> EnumerateTestCommands(IMethodInfo testMethod)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<IMethodInfo> EnumerateTestMethods()
        {
            throw new NotImplementedException();
        }

        public bool IsTestMethod(IMethodInfo testMethod)
        {
            throw new NotImplementedException();
        }
    }

    [RunWith(typeof(MyRunWith))]
    internal class MyRunWithTestClass { }

    internal class StubClass
    {
        public void NonTestMethod() { }
    }

    internal class StubTestClass
    {
        public void NonTestMethod() { }

        [Fact]
        public void TestMethod() { }
    }
}