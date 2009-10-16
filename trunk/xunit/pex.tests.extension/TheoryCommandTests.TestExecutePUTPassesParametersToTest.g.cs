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
using Microsoft.Pex.Framework.Generated;
using Microsoft.Pex.Framework.Exceptions;
using System.Reflection;
using Microsoft.Pex.Framework;

namespace pex.tests.extension
{
    public partial class TheoryCommandTests
    {
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestExecutePUTPassesParametersToTest06()
{
    TheoryCommand theoryCommand;
    object[] os = new object[3];
    os[2] = "Testssssssssssssssssssssssssssssssssssssssssssssssssssss";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "Test");
    this.TestExecutePUTPassesParametersToTest(theoryCommand);
}
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[PexRaisedException(typeof(Exception))]
public void TestExecutePUTPassesParametersToTest07()
{
    TheoryCommand theoryCommand;
    TargetInvocationException targetInvocationException;
    object[] os = new object[3];
    os[2] = "pex.tests.extension.SpyWithDataPassedtttttttttttttt";
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
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[PexRaisedException(typeof(ArgumentException))]
public void TestExecutePUTPassesParametersToTest08()
{
    TheoryCommand theoryCommand;
    object[] os = new object[3];
    os[1] = "";
    object s0 = new object();
    os[2] = s0;
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "Test");
    this.TestExecutePUTPassesParametersToTest(theoryCommand);
}
    }
}
