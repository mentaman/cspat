// <copyright file="EqualTests.TestEqualPUTSinglePositiveInfinity.g.cs" company="">Copyright ©  2009</copyright>
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
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Pex.Framework.Generated;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    public partial class EqualTests
    {
[TestMethod]
[PexGeneratedBy(typeof(EqualTests))]
[ExpectedException(typeof(EqualException))]
public void TestEqualPUTSinglePositiveInfinity01()
{
    this.TestEqualPUTSinglePositiveInfinity(0);
}
[TestMethod]
[PexGeneratedBy(typeof(EqualTests))]
public void TestEqualPUTSinglePositiveInfinity02()
{
    this.TestEqualPUTSinglePositiveInfinity(double.PositiveInfinity);
}
    }
}
