using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;

[PexClass(typeof(Assert))]
public partial class DoesNotContainTests
{
    [Fact, PexMethod]
    public void CanSearchForNullInContainer()
    {
        List<object> list = new List<object> { 16, "Hi there" };

        Assert.DoesNotContain(null, list);
    }

    [Fact, PexMethod]
    public void CanSearchForSubstrings()
    {
        Assert.DoesNotContain("hey", "Hello, world!");
    }

    [Fact, PexMethod]
    public void CanSearchForSubstringsCaseInsensitive()
    {
        PexAssert.Throws<DoesNotContainException>(
            () => Assert.DoesNotContain("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase));
    }

    [Fact, PexMethod]
    public void CanUseComparer()
    {
        List<int> list = new List<int>();
        list.Add(42);

        Assert.DoesNotContain(42, list, new MyComparer());
    }

    [Fact, PexMethod]
    public void ItemInContainer()
    {
        List<int> list = new List<int> { 42 };

        DoesNotContainException ex =
            PexAssert.Throws<DoesNotContainException>(() => Assert.DoesNotContain(42, list));

        PexAssert.AreEqual("Assert.DoesNotContain() failure: Found: 42", ex.Message);
    }

    [Fact, PexMethod]
    public void ItemNotInContainer()
    {
        List<int> list = new List<int>();

        Assert.DoesNotContain(42, list);
    }

    [Fact, PexMethod]
    public void NullsAllowedInContainer()
    {
        List<object> list = new List<object> { null, 16, "Hi there" };

        Assert.DoesNotContain(42, list);
    }

    [Fact, PexMethod]
    public void SubstringDoesNotContainIsCaseSensitiveByDefault()
    {
        Assert.DoesNotContain("WORLD", "Hello, world!");
    }

    [Fact, PexMethod]
    public void SubstringFound()
    {
        PexAssert.Throws<DoesNotContainException>(() => Assert.DoesNotContain("world", "Hello, world!"));
    }

    public class MyComparer : IComparer<int>
    {
        public int Compare(int x, int y)
        {
            return -1;
        }
    }
}