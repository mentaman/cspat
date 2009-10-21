// <copyright file="TheoryCommandTests.TestExecutePUTTruncatesVeryLongStrings.g.cs" company="">Copyright ©  2009</copyright>
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
using Microsoft.Pex.Framework.Exceptions;

namespace pex.tests.extension
{
    public partial class TheoryCommandTests
    {
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
public void TestExecutePUTTruncatesVeryLongStrings01()
{
    TheoryCommand theoryCommand;
    object[] os = new object[1];
    os[0] = "pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTTTTTTTTT";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "TestOne");
    this.TestExecutePUTTruncatesVeryLongStrings(theoryCommand);
    Assert.IsNotNull((object)theoryCommand);
    Assert.IsNotNull(theoryCommand.Parameters);
    Assert.AreEqual<int>(1, theoryCommand.Parameters.Length);
    Assert.IsNotNull(theoryCommand.Parameters[0]);
    Assert.AreEqual<string>
        ("pex.tests.extension.SpyWithDataPassed.TestOne(\"pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTT\"...)", 
        ((TestCommand)theoryCommand).DisplayName);
    Assert.AreEqual<string>("TestOne", ((TestCommand)theoryCommand).MethodName);
    Assert.AreEqual<string>("pex.tests.extension.SpyWithDataPassed", 
    ((TestCommand)theoryCommand).TypeName);
}
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[ExpectedException(typeof(Exception))]
public void TestExecutePUTTruncatesVeryLongStrings02()
{
    TheoryCommand theoryCommand;
    TargetInvocationException targetInvocationException;
    object[] os = new object[1];
    os[0] = "pex.tests.extension.SpyWithDataPassednnnnnnnnnnnnnn";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "TestOne");
    targetInvocationException = TargetInvocationExceptionFactory.Create();
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(2)
        .OnCall(0, "MMethodInfo.Invoke(Object, Object[])")
        .Throws(true)
        .Thrown((Exception)targetInvocationException);
    this.TestExecutePUTTruncatesVeryLongStrings(theoryCommand);
}
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestExecutePUTTruncatesVeryLongStrings03()
{
    TheoryCommand theoryCommand;
    object[] os = new object[1];
    os[0] = "pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTTTTTTTTT";
    theoryCommand = TheoryCommandFactory.Create
        ("pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTTTTTTTTT", os, 
        "pex.tests.extension.SpyWithDataPassed", "TestOne");
    this.TestExecutePUTTruncatesVeryLongStrings(theoryCommand);
}
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestExecutePUTTruncatesVeryLongStrings04()
{
    TheoryCommand theoryCommand;
    object[] os = new object[1];
    os[0] = "pex.tests.extension.SpyWithDataPassedTTTTTTTTTTTTTTTTTTTT";
    theoryCommand = TheoryCommandFactory.Create
        ((string)null, os, "pex.tests.extension.SpyWithDataPassed", "TestOne");
    this.TestExecutePUTTruncatesVeryLongStrings(theoryCommand);
}
    }
}
