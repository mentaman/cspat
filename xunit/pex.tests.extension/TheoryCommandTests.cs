using System;
using System.Reflection;
using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Xunit.Extensions;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.extension
{
    [TestClass,PexClass(typeof (TheoryCommand))]
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

        //achieve better coverage
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof(Exception)), PexAllowedException(typeof(InvalidOperationException))]
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

        [PexMethod, PexAllowedException(typeof (Exception)), PexAllowedException(typeof (InvalidOperationException))]
        public void TestExecutePUTExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            InstrumentedSpy.ctorCounter = 0;
            InstrumentedSpy.passedTestCounter = 0;
            command.Execute(new InstrumentedSpy());
            PexAssert.AreEqual(1, InstrumentedSpy.ctorCounter);
            PexAssert.AreEqual(1, InstrumentedSpy.passedTestCounter);
        }

//        [TestMethod]
//        public void Test()
//        {
//            MethodInfo method = Type.GetType("pex.tests.extension.InstrumentedSpy").GetMethod("PassedTest");
//            Console.WriteLine(method.Name);
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