using System;
using System.Reflection;
using System.Text;
using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Extensions;
using Xunit.Sdk;

[PexClass(typeof(TheoryCommand))]
public partial class TheoryCommandTests
{
    [Fact, PexMethod]
    public void ExecuteCreatesClassAndRunsTest()
    {
        MethodInfo methodInfo = typeof(InstrumentedSpy).GetMethod("PassedTest");
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
        InstrumentedSpy.ctorCounter = 0;
        InstrumentedSpy.passedTestCounter = 0;

        command.Execute(new InstrumentedSpy());

        Assert.Equal(1, InstrumentedSpy.ctorCounter);
        Assert.Equal(1, InstrumentedSpy.passedTestCounter);
    }

    [Fact, PexMethod]
    public void ExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce()
    {
        MethodInfo methodInfo = typeof(DisposableSpy).GetMethod("PassedTest");
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
        DisposableSpy.ctorCalled = 0;
        DisposableSpy.disposeCalled = 0;

        ITestResult result = command.Execute(new DisposableSpy());

        Assert.IsType<PassedResult>(result);
    }

    [Fact, PexMethod]
    public void NotEnoughData()
    {
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
                                                  null, new object[] { 2 });

        Assert.Throws<InvalidOperationException>(() => command.Execute(new ParameterSpy()));
    }

    [Fact, PexMethod]
    public void UsesDisplayName()
    {
        MethodInfo methodInfo = typeof(TestClassWithDisplayName).GetMethod("TheoryMethod");

        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), "My display name", new object[] { 42, 24.5 });

        Assert.Equal("My display name(42, 24.5)", command.DisplayName);
    }

    [Fact, PexMethod]
    public void PassesParametersToTest()
    {
        MethodInfo methodInfo = typeof(SpyWithDataPassed).GetMethod("Test");
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, new object[] { 42, 24.5, "foo" });
        SpyWithDataPassed.X = 0;
        SpyWithDataPassed.Y = 0.0;
        SpyWithDataPassed.Z = null;

        command.Execute(new SpyWithDataPassed());

        Assert.Equal(42, SpyWithDataPassed.X);
        Assert.Equal(24.5, SpyWithDataPassed.Y);
        Assert.Equal("foo", SpyWithDataPassed.Z);
    }

    [Fact, PexMethod]
    public void TestMethodReturnPassedResult()
    {
        MethodInfo methodInfo = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);

        MethodResult result = command.Execute(new TestMethodCommandClass());

        Assert.IsType<PassedResult>(result);
    }

    [Fact, PexMethod]
    public void ThrowsExceptionReturnFailedResult()
    {
        MethodInfo methodInfo = typeof(TestMethodCommandClass).GetMethod("ThrowsException");
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);

        Assert.Throws<InvalidOperationException>(() => command.Execute(new TestMethodCommandClass()));
    }

    [Fact, PexMethod]
    public void TooMuchData()
    {
        TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
                                                  null, new object[] { 2, "foo", 3.14 });

        Assert.Throws<InvalidOperationException>(() => command.Execute(new ParameterSpy()));
    }

    [Fact, PexMethod]
    public void TruncatesVeryLongStrings()
    {
        StringBuilder sb = new StringBuilder(500);

        for (int idx = 0; idx < 50; idx++)
            sb.Append("----=----|");

        TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
                                                  null, new object[] { 2, sb.ToString() });

        MethodResult result = command.Execute(new ParameterSpy());

        Assert.IsType<PassedResult>(result);
        Assert.Equal(@"TheoryCommandTests+ParameterSpy.Method(2, ""----=----|----=----|----=----|----=----|----=----|""...)", result.DisplayName);
    }

    internal class TestClassWithDisplayName
    {
        public void TheoryMethod(int x, double y) { }
    }

    internal class DisposableSpy : IDisposable
    {
        public static int ctorCalled;
        public static int disposeCalled;

        public DisposableSpy()
        {
            ctorCalled++;
        }

        public void Dispose()
        {
            disposeCalled++;
        }

        public void PassedTest() { }
    }

    internal class DisposableSpyWithConstructorThrow : IDisposable
    {
        public static int ctorCalled;
        public static int disposeCalled;
        public static int testCalled;

        public DisposableSpyWithConstructorThrow()
        {
            ctorCalled++;
            throw new InvalidOperationException("Constructor Failed");
        }

        public void Dispose()
        {
            disposeCalled++;
        }

        public void PassedTest()
        {
            testCalled++;
        }
    }

    internal class DisposableSpyWithDisposeThrow : IDisposable
    {
        public static int ctorCalled;
        public static int disposeCalled;
        public static int testCalled;

        public DisposableSpyWithDisposeThrow()
        {
            ctorCalled++;
        }

        public void Dispose()
        {
            disposeCalled++;
            throw new InvalidOperationException("Dispose Failed");
        }

        public void PassedTest()
        {
            testCalled++;
        }
    }

    internal class DisposableSpyWithTestThrow : IDisposable
    {
        public static int ctorCalled;
        public static int disposeCalled;
        public static int testCalled;

        public DisposableSpyWithTestThrow()
        {
            ctorCalled++;
        }

        public void Dispose()
        {
            disposeCalled++;
        }

        public void FailedTest()
        {
            testCalled++;
            throw new InvalidOperationException("Dispose Failed");
        }
    }

    internal class InstrumentedSpy
    {
        public static int ctorCounter;
        public static int passedTestCounter;

        public InstrumentedSpy()
        {
            ctorCounter++;
        }

        public void PassedTest()
        {
            passedTestCounter++;
        }
    }

    internal class ParameterSpy
    {
        public void Method(int x, string y)
        {
        }
    }

    internal class SpyWithDataPassed
    {
        public static int X;
        public static double Y;
        public static string Z;

        public void Test(int x, double y, string z)
        {
            X = x;
            Y = y;
            Z = z;
        }
    }

    internal class TestMethodCommandClass
    {
        public void TestMethod() { }

        public void ThrowsException()
        {
            throw new InvalidOperationException();
        }
    }
}