using System;
using Microsoft.Pex.Framework;
using Xunit.Extensions;

namespace pex.tests.extension
{
    [PexClass(typeof (TheoryCommand))]
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
        [PexMethod]
        public void TestExecutePUTExecuteCreatesClassAndRunsTest(TheoryCommand command)
        {
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

        [PexMethod]
        public void TestExecutePUTExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce(TheoryCommand command)
        {
            InstrumentedSpy.ctorCounter = 0;
            InstrumentedSpy.passedTestCounter = 0;
            command.Execute(new InstrumentedSpy());
            PexAssert.AreEqual(1, InstrumentedSpy.ctorCounter);
            PexAssert.AreEqual(1, InstrumentedSpy.passedTestCounter);
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

            public void PassedTest() { }
        }
    }
}