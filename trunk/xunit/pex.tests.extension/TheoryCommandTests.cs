using System;
using System.Reflection;
using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Xunit.Extensions;
using Microsoft.Pex.Framework.Validation;
using Xunit.Sdk;

namespace pex.tests.extension
{
    [TestClass, PexClass(typeof (TheoryCommand))]
    public partial class TheoryCommandTests
    {
//        [Fact, PexMethod]
//        public void ExecuteCreatesClassAndRunsTest()
//        {
//            MethodInfo methodInfo = typeof(InstrumentedSpy).GetMethod("PassedTest");
//            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
//            InstrumentedSpy.ctorCounter = 0;
//            InstrumentedSpy.passedTestCounter = 0;
//
//            command.Execute(new InstrumentedSpy());
//
//            Assert.Equal(1, InstrumentedSpy.ctorCounter);
//            Assert.Equal(1, InstrumentedSpy.passedTestCounter);
//        }

//        [Fact, PexMethod]
//        public void NotEnoughData()
//        {
//            TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof (ParameterSpy).GetMethod("Method")),
//                                                      null, new object[] {2});
//
//            Assert.Throws<InvalidOperationException>(() => command.Execute(new ParameterSpy()));
//        }

        //achieve better coverage
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof (Exception)),
         PexAllowedException(typeof (InvalidOperationException))]
        public void TestExecutePUTExecuteCreatesClassAndRunsTest([PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(TheoryCommandFactory.MethodInfo.TypeName, "pex.tests.extension.InstrumentedSpy");
            PexAssume.AreEqual(TheoryCommandFactory.MethodInfo.Name, "PassedTest");
            InstrumentedSpy.ctorCounter = 0;
            InstrumentedSpy.passedTestCounter = 0;
            command.Execute(new InstrumentedSpy());
            PexAssert.AreEqual(1, InstrumentedSpy.ctorCounter);
            PexAssert.AreEqual(1, InstrumentedSpy.passedTestCounter);
        }

//        [Fact, PexMethod]
//        public void ExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce()
//        {
//            MethodInfo methodInfo = typeof(DisposableSpy).GetMethod("PassedTest");
//            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
//            DisposableSpy.ctorCalled = 0;
//            DisposableSpy.disposeCalled = 0;
//
//            ITestResult result = command.Execute(new DisposableSpy());
//
//            Assert.IsType<PassedResult>(result);
//        }

        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof (Exception)),
         PexAllowedException(typeof (InvalidOperationException))]
        public void TestExecutePUTExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(TheoryCommandFactory.MethodInfo.TypeName, "pex.tests.extension.DisposableSpy");
            PexAssume.AreEqual(TheoryCommandFactory.MethodInfo.Name, "PassedTest");
            DisposableSpy.ctorCalled = 0;
            DisposableSpy.disposeCalled = 0;
            ITestResult result = command.Execute(new DisposableSpy());
            PexAssert.IsInstanceOfType(result, typeof (PassedResult));
        }


//
//        [Fact, PexMethod]
//        public void UsesDisplayName()
//        {
//            MethodInfo methodInfo = typeof(TestClassWithDisplayName).GetMethod("TheoryMethod");
//
//            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), "My display name", new object[] { 42, 24.5 });
//
//            Assert.Equal("My display name(42, 24.5)", command.DisplayName);
//        }
//
//        [Fact, PexMethod]
//        public void PassesParametersToTest()
//        {
//            MethodInfo methodInfo = typeof(SpyWithDataPassed).GetMethod("Test");
//            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, new object[] { 42, 24.5, "foo" });
//            SpyWithDataPassed.X = 0;
//            SpyWithDataPassed.Y = 0.0;
//            SpyWithDataPassed.Z = null;
//
//            command.Execute(new SpyWithDataPassed());
//
//            Assert.Equal(42, SpyWithDataPassed.X);
//            Assert.Equal(24.5, SpyWithDataPassed.Y);
//            Assert.Equal("foo", SpyWithDataPassed.Z);
//        }
    }

    public class InstrumentedSpy
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

    public class DisposableSpy : IDisposable
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

        public void PassedTest()
        {
        }
    }
}