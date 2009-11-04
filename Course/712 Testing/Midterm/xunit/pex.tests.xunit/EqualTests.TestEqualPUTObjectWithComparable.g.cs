// <copyright file="EqualTests.TestEqualPUTObjectWithComparable.g.cs" company="">Copyright ©  2009</copyright>
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
using Microsoft.Pex.Framework;

namespace pex.tests.xunit
{
    public partial class EqualTests
    {
[TestMethod]
[PexGeneratedBy(typeof(EqualTests))]
public void TestEqualPUTObjectWithComparable01()
{
    EqualTests.ComparableObject comparableObject;
    comparableObject = new EqualTests.ComparableObject();
    comparableObject.CompareResult = 0;
    comparableObject.CompareCalled = false;
    this.TestEqualPUTObjectWithComparable(comparableObject, comparableObject);
    Assert.IsNotNull((object)comparableObject);
    Assert.AreEqual<int>(0, comparableObject.CompareResult);
    Assert.AreEqual<bool>(true, comparableObject.CompareCalled);
    Assert.IsNotNull((object)comparableObject);
    Assert.IsTrue
        (object.ReferenceEquals((object)comparableObject, (object)comparableObject));
}
[TestMethod]
[PexGeneratedBy(typeof(EqualTests))]
public void TestEqualPUTObjectWithComparable02()
{
    EqualTests.ComparableObject comparableObject;
    IPexChoiceRecorder choices = PexChoose.NewTest();
    comparableObject = new EqualTests.ComparableObject();
    comparableObject.CompareResult = 2;
    comparableObject.CompareCalled = false;
    this.TestEqualPUTObjectWithComparable(comparableObject, comparableObject);
    Assert.IsNotNull((object)comparableObject);
    Assert.AreEqual<int>(2, comparableObject.CompareResult);
    Assert.AreEqual<bool>(true, comparableObject.CompareCalled);
    Assert.IsNotNull((object)comparableObject);
    Assert.IsTrue
        (object.ReferenceEquals((object)comparableObject, (object)comparableObject));
}
    }
}
