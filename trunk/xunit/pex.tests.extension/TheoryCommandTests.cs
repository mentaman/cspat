using System;
using System.Reflection;
using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using pex.utility;
using Xunit.Extensions;
using Microsoft.Pex.Framework.Validation;
using Xunit.Sdk;

namespace pex.tests.extension
{
    // generalize 9 tests
    [TestClass, PexClass(typeof(TheoryCommand))]
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

        //achieve better coverage 2.2 2.10
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(Exception))]
        public void TestExecutePUTExecuteCreatesClassAndRunsTest([PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.InstrumentedSpy");
            PexAssume.AreEqual(command.MethodName, "PassedTest");
            PexAssume.AreEqual(command.Parameters.Length, 0);
            InstrumentedSpy.ctorCounter = 0;
            InstrumentedSpy.passedTestCounter = 0;
            command.Execute(new InstrumentedSpy());
            PexAssert.AreEqual(1, InstrumentedSpy.ctorCounter);
            PexAssert.AreEqual(1, InstrumentedSpy.passedTestCounter);
        }


        //        [Fact, PexMethod]
        //        public void TooMuchData()
        //        {
        //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
        //                                                      null, new object[] { 2, "foo", 3.14 });
        //
        //            Assert.Throws<InvalidOperationException>(() => command.Execute(new ParameterSpy()));
        //        }

        // 2.10
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTTooMuchData([PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.InstrumentedSpy");
            PexAssume.AreEqual(command.MethodName, "PassedTest");
            PexAssume.IsTrue(command.Parameters.Length > 0);
            command.Execute(new InstrumentedSpy());

        }


        //
        //        [Fact, PexMethod]
        //        public void NotEnoughData()
        //        {
        //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
        //                                                      null, new object[] { 2 });
        //
        //            Assert.Throws<InvalidOperationException>(() => command.Execute(new ParameterSpy()));
        //        }

        //2.10
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTNotEnoughData([PexAssumeUnderTest]TheoryCommand command)
        {
            //            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.SpyWithDataPassed");
            PexAssume.AreEqual(command.MethodName, "Test");
            PexAssume.IsTrue(command.Parameters.Length < 3);
            command.Execute(new SpyWithDataPassed());
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

        // 2.2
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof(Exception)),
         PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTExecuteStubTestFixtureVerifyBeforeAfterTestCalledOnce(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.DisposableSpy");
            PexAssume.AreEqual(command.MethodName, "PassedTest");
            DisposableSpy.ctorCalled = 0;
            DisposableSpy.disposeCalled = 0;
            ITestResult result = command.Execute(new DisposableSpy());
            PexAssert.IsInstanceOfType(result, typeof(PassedResult));
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

        // 2.2
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof(Exception)),
         PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthLessThanFifty(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            PexAssume.IsNull(PexRepository.Get<string>("DisplayName"));
            PexAssume.IsTrue(PexRepository.Get<object[]>("parameters").Length > 0);
            var parameterValues = "";
            foreach (var parameter in command.Parameters)
            {
                object parameterValue = null;
                if (parameter is string)
                {
                    PexAssume.IsTrue((parameter as string).Length <= 50);
                    parameterValue = "\"" + parameter + "\"";
                }
                else
                {
                    parameterValue = parameter;
                }
                parameterValues += parameterValue + ", ";
                PexAssume.IsNotInstanceOfType(parameter, typeof(DateTime));
                PexAssume.IsNotNull(parameter);
            }
            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
            var expected = command.TypeName + "." + command.MethodName + "(" +
                           parameterValues + ")";
            PexAssert.AreEqual(expected, command.DisplayName);
        }

        // 2.2
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof(Exception)),
         PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthGreaterThanFifty(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            PexAssume.IsNull(PexRepository.Get<string>("DisplayName"));
            PexAssume.IsTrue(PexRepository.Get<object[]>("parameters").Length > 0);
            var parameterValues = "";
            foreach (var parameter in command.Parameters)
            {
                PexAssume.IsTrue(parameter is string);
                var s = (parameter as string);
                PexAssume.IsTrue(s.Length > 50);
                var parameterValue = "\"" + s.Substring(0, 50) + "\"...";
                parameterValues += parameterValue + ", ";
                PexAssume.IsNotInstanceOfType(parameter, typeof(DateTime));
                PexAssume.IsNotNull(parameter);
            }
            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
            var expected = command.TypeName + "." + command.MethodName + "(" +
                           parameterValues + ")";
            PexAssert.AreEqual(expected, command.DisplayName);
        }

        // 2.2
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(Exception)),
         PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTUsesNotNullDisplayName([PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            var displayName = PexRepository.Get<string>("DisplayName");
            PexAssume.IsNotNull(displayName);
            PexAssume.IsTrue(PexRepository.Get<object[]>("parameters").Length > 0);
            var parameterValues = "";
            foreach (var parameter in command.Parameters)
            {
                PexAssume.IsTrue(parameter is string);
                var s = (parameter as string);
                PexAssume.IsTrue(s.Length > 50);
                var parameterValue = "\"" + s.Substring(0, 50) + "\"...";
                parameterValues += parameterValue + ", ";
                PexAssume.IsNotInstanceOfType(parameter, typeof(DateTime));
                PexAssume.IsNotNull(parameter);
            }
            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
            var expected = displayName + "(" + parameterValues + ")";
            PexAssert.AreEqual(expected, command.DisplayName);
        }

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

        //2.2
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(Exception)),
         PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTPassesParametersToTest(
            [PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.SpyWithDataPassed");
            PexAssume.AreEqual(command.MethodName, "Test");
            PexAssume.IsTrue(command.Parameters.Length == 3);
            SpyWithDataPassed.X = null;
            SpyWithDataPassed.Y = null;
            SpyWithDataPassed.Z = null;
            ITestResult result = command.Execute(new SpyWithDataPassed());
            PexAssert.AreEqual(command.Parameters[0], SpyWithDataPassed.X);
            PexAssert.AreEqual(command.Parameters[1], SpyWithDataPassed.Y);
            PexAssert.AreEqual(command.Parameters[2], SpyWithDataPassed.Z);
        }

        //        [Fact, PexMethod]
        //        public void TestMethodReturnPassedResult()
        //        {
        //            MethodInfo methodInfo = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
        //
        //            MethodResult result = command.Execute(new TestMethodCommandClass());
        //
        //            Assert.IsType<PassedResult>(result);
        //        }
        //
        //        [Fact, PexMethod]
        //        public void ThrowsExceptionReturnFailedResult()
        //        {
        //            MethodInfo methodInfo = typeof(TestMethodCommandClass).GetMethod("ThrowsException");
        //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
        //
        //            Assert.Throws<InvalidOperationException>(() => command.Execute(new TestMethodCommandClass()));
        //        }

        // 2.2 2.10
        [PexMethod(MaxRunsWithoutNewTests = 200), PexAllowedException(typeof(Exception)), PexAllowedException(typeof(InvalidOperationException))]
        public void TestExecutePUTTestMethodReturnPassedResult([PexAssumeUnderTest] TheoryCommand command)
        {
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.InstrumentedSpy");
            PexAssume.AreEqual(command.MethodName, "PassedTest");
            //            PexAssume.IsNotNull(PexRepository.Get<object[]>("parameters"));
            //            PexAssume.AreEqual(PexRepository.Get<object[]>("parameters").Length, 0);
            PexAssume.AreEqual(0, command.Parameters.Length);
            var result = command.Execute(new InstrumentedSpy());
            PexAssert.IsInstanceOfType(result, typeof(PassedResult));
        }
        //
        //        [Fact, PexMethod]
        //        public void TruncatesVeryLongStrings()
        //        {
        //            StringBuilder sb = new StringBuilder(500);
        //
        //            for (int idx = 0; idx < 50; idx++)
        //                sb.Append("----=----|");
        //
        //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(typeof(ParameterSpy).GetMethod("Method")),
        //                                                      null, new object[] { 2, sb.ToString() });
        //
        //            MethodResult result = command.Execute(new ParameterSpy());
        //
        //            Assert.IsType<PassedResult>(result);
        //            Assert.Equal(@"TheoryCommandTests+ParameterSpy.Method(2, ""----=----|----=----|----=----|----=----|----=----|""...)", result.DisplayName);
        //        }

        //2.2
        [PexMethod(MaxRunsWithoutNewTests = 400), PexAllowedException(typeof(Exception))]
        public void TestExecutePUTTruncatesVeryLongStrings([PexAssumeUnderTest]TheoryCommand command)
        {
            var parameters = PexRepository.Get<object[]>("parameters");
            PexAssume.IsNull(PexRepository.Get<string>("DisplayName"));
            PexAssume.IsNotNull(parameters);
            PexAssume.IsTrue(parameters.Length == 1);
            PexAssume.IsTrue(parameters[0] is string);
            var s = (parameters[0] as string);
            PexAssume.IsTrue(s.Length > 50);
            PexAssume.AreEqual(command.TypeName, "pex.tests.extension.SpyWithDataPassed");
            PexAssume.AreEqual(command.MethodName, "TestOne");
            var parameterValue = "\"" + s.Substring(0, 50) + "\"...";
            var expected = command.TypeName + "." + command.MethodName + "(" +
                           parameterValue + ")";
            MethodResult result = command.Execute(new SpyWithDataPassed());
            PexAssert.IsInstanceOfType(result, typeof(PassedResult));
            PexAssert.AreEqual(expected, result.DisplayName);
        }

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

    public class SpyWithDataPassed
    {
        public static object X;
        public static object Y;
        public static object Z;

        public void Test(object x, object y, object z)
        {
            X = x;
            Y = y;
            Z = z;
        }

        public void TestOne(object x)
        {
            X = x;
            Y = null;
            Z = null;
        }
    }
}