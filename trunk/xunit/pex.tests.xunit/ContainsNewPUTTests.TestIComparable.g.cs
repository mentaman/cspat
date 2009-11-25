// <copyright file="ContainsNewPUTTests.TestIComparable.g.cs" company="">Copyright ©  2009</copyright>
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
using Microsoft.Pex.Framework;

namespace pex.tests.xunit
{
    public partial class ContainsNewPUTTests
    {
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable01()
{
    ComparableObject[] comparableObjects = new ComparableObject[0];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable02()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable03()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable04()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable05()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable06()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    ComparableObject s2 = new ComparableObject();
    comparableObjects[1] = s2;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable07()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable08()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable09()
{
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    ComparableObject s1 = new ComparableObject();
    comparableObjects[1] = s1;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable10()
{
    ComparableObject[] comparableObjects = new ComparableObject[0];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable11()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable12()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable13()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable14()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable15()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    ComparableObject s2 = new ComparableObject();
    comparableObjects[1] = s2;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable16()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable17()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable18()
{
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    ComparableObject s1 = new ComparableObject();
    comparableObjects[1] = s1;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable19()
{
    ComparableObject[] comparableObjects = new ComparableObject[0];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable20()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable21()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable22()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable23()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable24()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    ComparableObject s2 = new ComparableObject();
    comparableObjects[1] = s2;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable25()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable26()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable27()
{
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    ComparableObject s1 = new ComparableObject();
    comparableObjects[1] = s1;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable28()
{
    ComparableObject[] comparableObjects = new ComparableObject[0];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable29()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable30()
{
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable31()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable32()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[1];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable33()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    ComparableObject s2 = new ComparableObject();
    comparableObjects[1] = s2;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable34()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject.CompareTo(ComparableObject)")
        .Returns((object)1);
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s1 = new ComparableObject();
    comparableObjects[0] = s1;
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable35()
{
    ComparableObject s0 = new ComparableObject();
    ComparableObject[] comparableObjects = new ComparableObject[2];
    this.TestIComparable(s0, comparableObjects);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable36()
{
    ComparableObject[] comparableObjects = new ComparableObject[2];
    ComparableObject s0 = new ComparableObject();
    comparableObjects[0] = s0;
    ComparableObject s1 = new ComparableObject();
    comparableObjects[1] = s1;
    this.TestIComparable((ComparableObject)null, comparableObjects);
}
    }
}
