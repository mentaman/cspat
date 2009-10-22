using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;

[PexClass(typeof(Assert))]
public partial class ContainsTests
{
    [Fact, PexMethod]
    public void CanFindNullInContainer()
    {
        List<object> list = new List<object> { 16, null, "Hi there" };

        Assert.Contains(null, list);
    }

    [Fact, PexMethod]
    public void CanSearchForSubstrings()
    {
        Assert.Contains("wor", "Hello, world!");
    }

    [Fact, PexMethod]
    public void CanSearchForSubstringsCaseInsensitive()
    {
        Assert.Contains("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase);
    }

    [Fact, PexMethod]
    public void CanUseComparer()
    {
        List<int> list = new List<int> { 42 };

        Assert.Contains(43, list, new MyComparer());
    }

    [Fact, PexMethod]
    public void ItemInContainer()
    {
        List<int> list = new List<int> { 42 };

        Assert.Contains(42, list);
    }

    [Fact, PexMethod]
    public void ItemNotInContainer()
    {
        List<int> list = new List<int>();

        ContainsException ex = PexAssert.Throws<ContainsException>(() => Assert.Contains(42, list));

        PexAssert.AreEqual("Assert.Contains() failure: Not found: 42", ex.Message);
    }

    [Fact, PexMethod]
    public void NullsAllowedInContainer()
    {
        List<object> list = new List<object> { null, 16, "Hi there" };

        Assert.Contains("Hi there", list);
    }

    [Fact, PexMethod]
    public void SubstringContainsIsCaseSensitiveByDefault()
    {
        PexAssert.Throws<ContainsException>(() => Assert.Contains("WORLD", "Hello, world!"));
    }

    [Fact, PexMethod]
    public void SubstringNotFound()
    {
        PexAssert.Throws<ContainsException>(() => Assert.Contains("hey", "Hello, world!"));
    }

    public class MyComparer : IComparer<int>
    {
        public int Compare(int x, int y)
        {
            var call = PexChoose.FromCall(this);
            var compare = call.ChooseResult<int>();
            PexAssume.IsTrue(compare == -1 || compare == 0 || compare == 1);
            return compare;
        }
    }
}