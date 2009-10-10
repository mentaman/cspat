using System;
using System.Collections.Generic;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{
//
//        [Fact]
//        public void CanFindNullInContainer()
//        {
//            List<object> list = new List<object> { 16, null, "Hi there" };
//
//            Assert.Contains(null, list);
//        }
//
//        [Fact]
//        public void CanSearchForSubstrings()
//        {
//            Assert.Contains("wor", "Hello, world!");
//        }
//
//        [Fact]
//        public void CanSearchForSubstringsCaseInsensitive()
//        {
//            Assert.Contains("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase);
//        }
//
//        [Fact]
//        public void CanUseComparer()
//        {
//            List<int> list = new List<int> { 42 };
//
//            Assert.Contains(43, list, new MyComparer());
//        }
//
//        [Fact]
//        public void ItemInContainer()
//        {
//            List<int> list = new List<int> { 42 };
//
//            Assert.Contains(42, list);
//        }
//
//        [Fact]
//        public void ItemNotInContainer()
//        {
//            List<int> list = new List<int>();
//
//            ContainsException ex = Assert.Throws<ContainsException>(() => Assert.Contains(42, list));
//
//            Assert.Equal("Assert.Contains() failure: Not found: 42", ex.Message);
//        }
//
//        [Fact]
//        public void NullsAllowedInContainer()
//        {
//            List<object> list = new List<object> { null, 16, "Hi there" };
//
//            Assert.Contains("Hi there", list);
//        }
//
//        [Fact]
//        public void SubstringContainsIsCaseSensitiveByDefault()
//        {
//            Assert.Throws<ContainsException>(() => Assert.Contains("WORLD", "Hello, world!"));
//        }
//
//        [Fact]
//        public void SubstringNotFound()
//        {
//            Assert.Throws<ContainsException>(() => Assert.Contains("hey", "Hello, world!"));
//        }
//
//        class MyComparer : IComparer<int>
//        {
//            public int Compare(int x, int y)
//            {
//                return 0;
//            }
//        }
    [PexClass(typeof(Assert))]
    public partial class ContainsTests
    {
//        public void CanFindNullInContainer()
//        {
//            List<object> list = new List<object> { 16, null, "Hi there" };
//
//            Assert.Contains(null, list);
//        }

        [PexMethod]
        [PexAllowedException(typeof(ContainsException))]
        public void TestContainsPUTCanFindNullInContainer([PexAssumeUnderTest]object[] list, object item)
        {
            PexAssume.IsNull(item);
            Assert.Contains(item, list);
        }

//        public void CanSearchForSubstrings()
//        {
//            Assert.Contains("wor", "Hello, world!");
//        }

        [PexMethod]
        public void TestContainsPUTCanSearchForSubstring(string subString, string wholeString)
        {
            PexAssume.IsNotNull(subString);
            PexAssume.IsNotNull(wholeString);
            PexAssume.IsTrue(wholeString.IndexOf(subString) != -1);
            PexAssume.IsTrue(wholeString.Length > subString.Length);
            Assert.Contains(subString, wholeString);
        }

//        [Fact]
//        public void CanSearchForSubstringsCaseInsensitive()
//        {
//            Assert.Contains("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase);
//        }

        [PexMethod]
        public void TestContainsPUTCanSearchForSubstringCaseInsensitive(string subString, string wholeString)
        {
            PexAssume.IsNotNull(subString);
            PexAssume.IsNotNull(wholeString);
            PexAssume.IsTrue(wholeString.Contains("A"));
            PexAssume.IsTrue(subString.Contains("a"));
            PexAssume.IsTrue(wholeString.Length > subString.Length);
            Assert.Contains(subString, wholeString, StringComparison.InvariantCultureIgnoreCase);
        }
    }
}