// <copyright file="DoesNotContainTests.TestDoesNotContainPUTCanUseComparer.g.cs" company="">Copyright ©  2009</copyright>
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
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Pex.Framework.Generated;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Exceptions;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    public partial class DoesNotContainTests
    {
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer01()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer02()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer03()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer04()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer05()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer06()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer07()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer08()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer09()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer10()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer11()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer12()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer13()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(PexAssertFailedException))]
public void TestDoesNotContainPUTCanUseComparer14()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer15()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer16()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer17()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer18()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer19()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[PexRaisedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer20()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer21()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer22()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[ExpectedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer23()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer24()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer25()
{
    List<int> list;
    int[] ints = new int[0];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(4, list.Capacity);
    Assert.AreEqual<int>(1, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[ExpectedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer26()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[ExpectedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer27()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
[ExpectedException(typeof(DoesNotContainException))]
public void TestDoesNotContainPUTCanUseComparer28()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer29()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)(-1));
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
[TestMethod]
[PexGeneratedBy(typeof(DoesNotContainTests))]
public void TestDoesNotContainPUTCanUseComparer30()
{
    List<int> list;
    int[] ints = new int[1];
    list = new List<int>((IEnumerable<int>)ints);
    IPexChoiceRecorder choices = PexChoose.NewTest();
    choices.NextSegment(1)
        .OnCall(0, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    choices.OnCall(1, "MyComparer.Compare(Int32, Int32)")
        .Returns((object)1);
    this.TestDoesNotContainPUTCanUseComparer(list, 0);
    Assert.IsNotNull((object)list);
    Assert.AreEqual<int>(2, list.Capacity);
    Assert.AreEqual<int>(2, list.Count);
}
    }
}
