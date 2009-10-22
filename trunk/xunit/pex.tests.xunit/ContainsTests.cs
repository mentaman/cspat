using System;
using System.Collections.Generic;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{

    // generalize 9 tests
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
		//Pattern 2.6 2.10
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
		//Pattern 2.2
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
		//Pattern 2.2
        public void TestContainsPUTCanSearchForSubstringCaseInsensitive(string subString, string wholeString)
        {
            PexAssume.IsNotNull(subString);
            PexAssume.IsNotNull(wholeString);
            PexAssume.IsTrue(wholeString.Contains("A"));
            PexAssume.IsTrue(subString.Contains("a"));
            PexAssume.IsTrue(wholeString.Length > subString.Length);
            Assert.Contains(subString, wholeString, StringComparison.InvariantCultureIgnoreCase);
        }

        //        [Fact]
        //        public void CanUseComparer()
        //        {
        //            List<int> list = new List<int> { 42 };
        //
        //            Assert.Contains(43, list, new MyComparer());
        //        }

        [PexMethod, PexAllowedException(typeof(ContainsException))]
		//Pattern ??
        public void TestContainsPUTCanUseComparer(int x, [PexAssumeNotNull]int[] y)
        {
            var call = PexChoose.FromCall(this);
            var comparer = call.ChooseResult<IComparer<int>>();
            PexAssume.IsNotNull(comparer);
            Assert.Contains(x, y, new MyComparer());
        }

        //
        //        [Fact]
        //        public void ItemInContainer()
        //        {
        //            List<int> list = new List<int> { 42 };
        //
        //            Assert.Contains(42, list);
        //        }

        [PexMethod]
		//2.6
        public void TestContainsPUTItemInContainer( int item, List<int> container)
        {
            PexAssume.IsNotNull(container);
            PexAssume.IsTrue(container.Contains(item));
            Assert.Contains(item,container);
        }

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

        [PexMethod]
		//Pattern 2.2
        public void TestContainsPUTItemNotInContainer(int item, List<int> container)
        {
            PexAssume.IsNotNull(container);
            PexAssume.IsFalse(container.Contains(item));
            ContainsException ex = PexAssert.Throws<ContainsException>(() => Assert.Contains(item, container));
            PexAssert.AreEqual("Assert.Contains() failure: Not found: " + item, ex.Message);
        }

        //        [Fact]
        //        public void NullsAllowedInContainer()
        //        {
        //            List<object> list = new List<object> { null, 16, "Hi there" };
        //
        //            Assert.Contains("Hi there", list);
        //        }
        //

        [PexMethod]
		//Pattern 2.2
        public void TestContainsPUTNullsAllowedInContainer(int x, object[] container )
        {
            PexAssume.IsNotNull(container);
            PexAssume.IsTrue(container.Length >= 3);
            PexAssume.IsNull(container[0]);
            PexAssume.IsInstanceOfType(container[1],typeof(string));
//            PexAssume.AreEqual(x,container[2]);
            bool found = false;
            foreach (var i in container)
            {
                if (x.Equals(i))
                {
                    found = true;
                }
            }
            PexAssume.IsTrue(found);
            Assert.Contains(x, container);
        }



        //        [Fact]
        //        public void SubstringContainsIsCaseSensitiveByDefault()
        //        {
        //            Assert.Throws<ContainsException>(() => Assert.Contains("WORLD", "Hello, world!"));
        //        }
        //

        [PexMethod]
		//Pattern 2.2
        public void TestContainsPUTSubstringContainsIsCaseSensitiveByDefault(string substring, string wholeString)
        {
            PexAssume.IsNotNull(substring);
            PexAssume.IsNotNull(wholeString);
            PexAssume.IsTrue(wholeString.Length > substring.Length);
            PexAssume.IsTrue(substring.Length > 0);
            PexAssume.IsTrue(wholeString.Contains("a"));
            PexAssume.IsTrue(substring.Contains("a"));
            PexAssume.IsTrue(wholeString.IndexOf(substring) != -1);
            PexAssert.Throws<ContainsException>(() => Assert.Contains(substring, wholeString.ToUpper()));
        }
        //        [Fact]
        //        public void SubstringNotFound()
        //        {
        //            Assert.Throws<ContainsException>(() => Assert.Contains("hey", "Hello, world!"));
        //        }
        //

        [PexMethod]
		//Pattern 2.2
        public void TestContainsPUTSubstringNotFound(string substring, string wholeString)
        {
            PexAssume.IsNotNull(substring);
            PexAssume.IsNotNull(wholeString);
            PexAssume.IsTrue(wholeString.Length > substring.Length);
            PexAssume.IsTrue(substring.Length > 0);
            PexAssume.IsTrue(wholeString.IndexOf(substring) == -1);
            PexAssert.Throws<ContainsException>(() => Assert.Contains(substring, wholeString));
        }
    }

    public class MyComparer : IComparer<int>
    {
        public int Compare(int x, int y)
        {
            return 0;
        }
    }

}