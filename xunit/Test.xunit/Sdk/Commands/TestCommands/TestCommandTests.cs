using System;
using System.Collections.Generic;
using System.Reflection;
using System.Xml;
using TestUtility;
using Xunit;
using Xunit.Sdk;

public class TestCommandTests
{
    [Fact]
    public void ExecuteRunsTest()
    {
        MethodInfo method = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        TestCommand command = new TestCommand(Reflector.Wrap(method));
        TestMethodCommandClass.testCounter = 0;

        command.Execute(new TestMethodCommandClass());

        Assert.Equal(1, TestMethodCommandClass.testCounter);
    }

    [Fact]
    public void TestMethodReturnPassedResult()
    {
        MethodInfo method = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        TestCommand command = new TestCommand(Reflector.Wrap(method));

        MethodResult result = command.Execute(new TestMethodCommandClass());

        Assert.IsType<PassedResult>(result);
    }

    [Fact]
    public void TurnsParameterCountMismatchExceptionIntoInvalidOperationException()
    {
        IMethodInfo method = new ThrowingMethodInfo();
        TestCommand command = new TestCommand(method);

        Exception ex = Record.Exception(() => command.Execute(new TestMethodCommandClass()));

        Assert.IsType<InvalidOperationException>(ex);
        Assert.Equal("Fact method StubbyType.StubbyName cannot have parameters", ex.Message);
    }

    [Fact]
    public void TestCommandReturnsStartXml_WithoutDisplayName()
    {
        MethodInfo method = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        TestCommand command = new TestCommand(Reflector.Wrap(method));

        XmlNode result = command.ToStartXml();

        Assert.Equal("start", result.Name);
        ResultXmlUtility.AssertAttribute(result, "name", typeof(TestMethodCommandClass).FullName + ".TestMethod");
        ResultXmlUtility.AssertAttribute(result, "type", typeof(TestMethodCommandClass).FullName);
        ResultXmlUtility.AssertAttribute(result, "method", "TestMethod");
    }

    [Fact]
    public void TestCommandReturnsStartXml_WithDisplayName()
    {
        MethodInfo method = typeof(TestMethodCommandClass).GetMethod("TestMethod");
        TestCommand command = new TestCommand(Reflector.Wrap(method), "Display Name!");

        XmlNode result = command.ToStartXml();

        Assert.Equal("start", result.Name);
        ResultXmlUtility.AssertAttribute(result, "name", "Display Name!");
        ResultXmlUtility.AssertAttribute(result, "type", typeof(TestMethodCommandClass).FullName);
        ResultXmlUtility.AssertAttribute(result, "method", "TestMethod");
    }

    internal class TestMethodCommandClass
    {
        public static int testCounter;

        public void TestMethod()
        {
            ++testCounter;
        }

        public void ThrowsException()
        {
            throw new InvalidOperationException();
        }

        public void ThrowsTargetInvocationException()
        {
            throw new TargetInvocationException(null);
        }
    }

    internal class ThrowingMethodInfo : IMethodInfo
    {
        public bool IsAbstract
        {
            get { throw new NotImplementedException(); }
        }

        public bool IsStatic
        {
            get { throw new NotImplementedException(); }
        }

        public MethodInfo MethodInfo
        {
            get { throw new NotImplementedException(); }
        }

        public string Name
        {
            get { return "StubbyName"; }
        }

        public string ReturnType
        {
            get { throw new NotImplementedException(); }
        }

        public string TypeName
        {
            get { return "StubbyType"; }
        }

        public object CreateInstance()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<IAttributeInfo> GetCustomAttributes(Type attributeType)
        {
            throw new NotImplementedException();
        }

        public bool HasAttribute(Type attributeType)
        {
            throw new NotImplementedException();
        }

        public void Invoke(object testClass, params object[] parameters)
        {
            throw new ParamterCountMismatchException();
        }
    }
}