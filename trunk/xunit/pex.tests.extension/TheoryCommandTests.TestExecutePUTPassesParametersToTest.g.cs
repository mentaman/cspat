// <copyright file="TheoryCommandTests.TestExecutePUTPassesParametersToTest.g.cs" company="">Copyright ©  2009</copyright>
// <auto-generated>
// This file contains automatically generated unit tests.
// Do NOT modify this file manually.
// 
// When Pex is invoked again,
// it might remove or update any previously generated unit tests.
// 
// If the contents of this file becomes outdated, e.g. if it does not
// compile anymore, you may delete this file and invoke Pex again.
// </auto-generated>
using System;
using Xunit.Extensions;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Xunit.Sdk;
using Microsoft.Pex.Framework.Generated;
using System.Reflection;
using Microsoft.Pex.Framework;

namespace pex.tests.extension
{
    public partial class TheoryCommandTests
    {
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
public void TestExecutePUTPassesParametersToTest01()
{
    TheoryCommand theoryCommand;
    object[] os = new object[3];
    object boxb = (object)(default(bool));
    os[1] = boxb;
    os[2] = "pex.tests.extension.SpyWithDataPassedeeeeeeeeeeeeee";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "Test");
    this.TestExecutePUTPassesParametersToTest(theoryCommand);
    Assert.IsNotNull((object)theoryCommand);
    Assert.IsNotNull(theoryCommand.Parameters);
    Assert.AreEqual<int>(3, theoryCommand.Parameters.Length);
    Assert.IsNull(theoryCommand.Parameters[0]);
    Assert.IsNotNull(theoryCommand.Parameters[1]);
    Assert.AreEqual<bool>(false, (bool)(theoryCommand.Parameters[1]));
    Assert.IsNotNull(theoryCommand.Parameters[2]);
    Assert.AreEqual<string>
        ("pex.tests.extension.SpyWithDataPassed.Test(null, False, \"pex.tests.extension.SpyWithDataPassedeeeeeeeeeeeee\"...)", 
        ((TestCommand)theoryCommand).DisplayName);
    Assert.AreEqual<string>("Test", ((TestCommand)theoryCommand).MethodName);
    Assert.AreEqual<string>("pex.tests.extension.SpyWithDataPassed", 
    ((TestCommand)theoryCommand).TypeName);
}
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[ExpectedException(typeof(Exception))]
public void TestExecutePUTPassesParametersToTest02()
{
    TheoryCommand theoryCommand;
    TargetInvocationException targetInvocationException;
    object[] os = new object[3];
    object boxb = (object)(default(bool));
    os[1] = boxb;
    os[2] = "pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTTTTTTTT";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "Test");
    targetInvocationException = TargetInvocationExceptionFactory.Create();
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(2)
        .OnCall(0, "MMethodInfo.Invoke(Object, Object[])")
        .Throws(true)
        .Thrown((Exception)targetInvocationException);
    this.TestExecutePUTPassesParametersToTest(theoryCommand);
}
    }
}
