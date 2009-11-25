// <copyright file="ContainsNewPUTTests.TestIComparable2.g.cs" company="">Copyright ©  2009</copyright>
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
public void TestIComparable201()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[0];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable202()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable203()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable204()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable205()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable206()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    ComparableObject2 s2 = new ComparableObject2();
    comparableObject2s[1] = s2;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable207()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable208()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable209()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[1] = s1;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable210()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[0];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable211()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable212()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable213()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable214()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable215()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    ComparableObject2 s2 = new ComparableObject2();
    comparableObject2s[1] = s2;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable216()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable217()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable218()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[1] = s1;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable219()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[0];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable220()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable221()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable222()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable223()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable224()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    ComparableObject2 s2 = new ComparableObject2();
    comparableObject2s[1] = s2;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable225()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable226()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable227()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[1] = s1;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable228()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[0];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable229()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable230()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable231()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable232()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[1];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
public void TestIComparable233()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    ComparableObject2 s2 = new ComparableObject2();
    comparableObject2s[1] = s2;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable234()
{
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.OnCall(0, "ComparableObject2.CompareTo(Object)")
        .Returns((object)1);
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[0] = s1;
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable235()
{
    ComparableObject2 s0 = new ComparableObject2();
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    this.TestIComparable2(s0, comparableObject2s);
}
[TestMethod]
[PexGeneratedBy(typeof(ContainsNewPUTTests))]
[ExpectedException(typeof(ContainsException))]
public void TestIComparable236()
{
    ComparableObject2[] comparableObject2s = new ComparableObject2[2];
    ComparableObject2 s0 = new ComparableObject2();
    comparableObject2s[0] = s0;
    ComparableObject2 s1 = new ComparableObject2();
    comparableObject2s[1] = s1;
    this.TestIComparable2((ComparableObject2)null, comparableObject2s);
}
    }
}
