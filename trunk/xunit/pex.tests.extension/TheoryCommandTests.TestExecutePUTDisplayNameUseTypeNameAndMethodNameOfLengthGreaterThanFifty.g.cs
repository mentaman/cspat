// <copyright file="TheoryCommandTests.TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthGreaterThanFifty.g.cs" company="">Copyright ©  2009</copyright>
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

namespace pex.tests.extension
{
    public partial class TheoryCommandTests
    {
[TestMethod]
[PexGeneratedBy(typeof(TheoryCommandTests))]
public void TestExecutePUTDisplayNameUseTypeNameAndM02()
{
    TheoryCommand theoryCommand;
    object[] os = new object[1];
    os[0] = new string('\0', 51);
    theoryCommand =
      TheoryCommandFactory.Create((string)null, os, (string)null, (string)null);
    this.TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthGreaterThanFifty
        (theoryCommand);
    Assert.IsNotNull((object)theoryCommand);
    Assert.IsNotNull(theoryCommand.Parameters);
    Assert.AreEqual<int>(1, theoryCommand.Parameters.Length);
    Assert.IsNotNull(theoryCommand.Parameters[0]);
    Assert.AreEqual<string>
        (".(\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"...)", 
        ((TestCommand)theoryCommand).DisplayName);
    Assert.AreEqual<string>((string)null, ((TestCommand)theoryCommand).MethodName);
    Assert.AreEqual<string>((string)null, ((TestCommand)theoryCommand).TypeName);
}
    }
}
