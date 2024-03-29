using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Xunit;
using Xunit.Sdk;

public class MethodUtilityTests
{
    public class GetProperties
    {
        [Fact]
        public void MultiplePropertiesOnATestMethod()
        {
            string methodName = "MultipleTestTraitsOnAMethod";
            Type testClassType = typeof(ClassWithTraits);
            MethodInfo methodInfo = testClassType.GetMethod(methodName);

            var traits = MethodUtility.GetTraits(Reflector.Wrap(methodInfo));

            Assert.Equal(2, traits.Count);
            Assert.Equal("more than just the test method name", traits["Description"].Single());
            Assert.Equal("James Newkirk", traits["Author"].Single());
        }

        [Fact]
        public void NoProperties()
        {
            Type testClassType = typeof(ClassWithTraits);
            MethodInfo methodInfo = testClassType.GetMethod("MethodDoesNotHaveTestTraits");

            var traits = MethodUtility.GetTraits(Reflector.Wrap(methodInfo));

            Assert.Equal(0, traits.Count);
        }

        [Fact]
        public void SingleTraitOnATestMethod()
        {
            string methodName = "SingleTraitOnAMethod";
            Type testClassType = typeof(ClassWithTraits);
            MethodInfo methodInfo = testClassType.GetMethod(methodName);

            var traits = MethodUtility.GetTraits(Reflector.Wrap(methodInfo));

            Assert.Equal(1, traits.Count);
            Assert.Equal("more than just the test method name", traits["Description"].Single());
        }
    }

    public class GetTestCommands
    {
        [Fact]
        public void CanDecorateTestMethodWithMultipleFactDerivedAttributes()
        {
            MethodInfo method = typeof(Spy).GetMethod("TestMethod");

            List<ITestCommand> commands = new List<ITestCommand>(MethodUtility.GetTestCommands(Reflector.Wrap(method)));

            Assert.Equal(2, commands.Count);
        }

        [AttributeUsage(AttributeTargets.Method, AllowMultiple = true)]
        internal class DerivedFactAttribute : FactAttribute { }

        internal class Spy
        {
            [DerivedFact]
            [DerivedFact]
            public void TestMethod() { }
        }
    }

    public class HasProperties
    {
        [Fact]
        public void MethodDoesNotHaveTraits()
        {
            Type testClassType = typeof(ClassWithTraits);
            MethodInfo methodInfo = testClassType.GetMethod("MethodDoesNotHaveTestTraits");

            Assert.False(MethodUtility.HasTraits(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void MethodHasATrait()
        {
            Type testClassType = typeof(ClassWithTraits);
            MethodInfo methodInfo = testClassType.GetMethod("SingleTraitOnAMethod");

            Assert.True(MethodUtility.HasTraits(Reflector.Wrap(methodInfo)));
        }
    }

    public class HasTimeout
    {
        [Fact]
        public void TestMethodWithNoTimeoutParameter()
        {
            Type testClassType = typeof(TimeoutTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithNoTimeoutParameter");

            Assert.False(MethodUtility.HasTimeout(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TestMethodWithTimeoutParameter()
        {
            Type testClassType = typeof(TimeoutTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithTimeoutParameter");

            Assert.True(MethodUtility.HasTimeout(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TimeoutParameter()
        {
            Type testClassType = typeof(TimeoutTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithTimeoutParameter");

            long timeout = MethodUtility.GetTimeoutParameter(Reflector.Wrap(methodInfo));
            Assert.Equal<long>(1000, timeout);
        }

        internal class TimeoutTestClass
        {
            [Fact]
            public void TestAttributeWithNoTimeoutParameter() { }

            [Fact(Timeout = 1000)]
            public void TestAttributeWithTimeoutParameter() { }
        }
    }

    public class IsSkip
    {
        [Fact]
        public void SkipReasonParameter()
        {
            Type testClassType = typeof(SkipTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithSkipReason");

            string skipReason = MethodUtility.GetSkipReason(Reflector.Wrap(methodInfo));
            Assert.Equal("reason", skipReason);
        }

        [Fact]
        public void TestMethodDoesNotHaveSkipReasonParameter()
        {
            Type testClassType = typeof(SkipTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithNoSkipReason");

            Assert.False(MethodUtility.IsSkip(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TestMethodHasSkipReasonParameter()
        {
            Type testClassType = typeof(SkipTestClass);
            MethodInfo methodInfo = testClassType.GetMethod("TestAttributeWithSkipReason");

            Assert.True(MethodUtility.IsSkip(Reflector.Wrap(methodInfo)));
        }

        internal class SkipTestClass
        {
            [Fact]
            public void TestAttributeWithNoSkipReason() { }

            [Fact(Skip = "reason")]
            public void TestAttributeWithSkipReason() { }
        }
    }

    public class IsTest
    {
        [Fact]
        public void IsATest()
        {
            Type testClassType = typeof(TestMethodClass);
            MethodInfo methodInfo = testClassType.GetMethod("IsATestMethod");

            Assert.True(MethodUtility.IsTest(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void MethodDoesNotHaveTestAttribute()
        {
            Type testClassType = typeof(NoTestAttributeClass);
            MethodInfo methodInfo = testClassType.GetMethod("NoTestAttribute");

            Assert.False(MethodUtility.IsTest(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TestMethodIsAbstract()
        {
            Type testClassType = typeof(AbstractMethodClass);
            MethodInfo methodInfo = testClassType.GetMethod("AbstractMethod");

            Assert.False(MethodUtility.IsTest(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TestMethodIsStatic()
        {
            Type testClassType = typeof(StaticTestMethodClass);
            MethodInfo methodInfo = testClassType.GetMethod("StaticTestMethod");

            Assert.True(MethodUtility.IsTest(Reflector.Wrap(methodInfo)));
        }

        [Fact]
        public void TestMethodsCanHaveNonVoidReturnType()
        {
            Type testClassType = typeof(NonVoidReturnClass);
            MethodInfo methodInfo = testClassType.GetMethod("NonVoidTest");

            Assert.True(MethodUtility.IsTest(Reflector.Wrap(methodInfo)));
        }

        internal abstract class AbstractMethodClass
        {
            [Fact]
            public abstract void AbstractMethod();
        }

        internal class NonVoidReturnClass
        {
            [Fact]
            public string NonVoidTest()
            {
                return null;
            }
        }

        internal class NoTestAttributeClass
        {
            public void NoTestAttribute() { }
        }

        internal class StaticTestMethodClass
        {
            [Fact]
            public static void StaticTestMethod() { }
        }

        internal class TestMethodClass
        {
            [Fact]
            public void IsATestMethod() { }
        }
    }

    internal class ClassWithTraits
    {
        public void MethodDoesNotHaveTestTraits() { }

        [Trait("Description", "more than just the test method name")]
        [Trait("Author", "James Newkirk")]
        public void MultipleTestTraitsOnAMethod() { }

        [Trait("Description", "more than just the test method name")]
        public void SingleTraitOnAMethod() { }
    }
}