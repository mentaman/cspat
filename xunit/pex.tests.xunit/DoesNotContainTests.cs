using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class DoesNotContainTests
    {
        /*
        public void CanSearchForNullInContainer()
        {
            List<object> list = new List<object> { 16, "Hi there" };

            Assert.DoesNotContain(null, list);
        }
        */

        [PexMethod]
        
        public void TestDoesNotContainPUTCanSearchForNullInContainer([PexAssumeUnderTest]List<object> list)
        {
            PexAssume.IsFalse(list.Contains(null) );
            Assert.DoesNotContain(null, list);
        }

        /*
        public void CanSearchForSubstrings()
        {
            Assert.DoesNotContain("hey", "Hello, world!");
        } 
        */

        [PexMethod]
        //Stop at the 6th run
        public void TestDoesNotContainPUTCanSearchForSubstrings([PexAssumeUnderTest]String i, [PexAssumeUnderTest]String j)
        {
            PexAssume.IsFalse(j.Contains(i) || i.Length >= j.Length);
            Assert.DoesNotContain(i, j);
        }

        /*
        [Fact]
        public void CanSearchForSubstringsCaseInsensitive()
        {
            Assert.Throws<DoesNotContainException>(
                () => Assert.DoesNotContain("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase));
        } 
         */

        [PexMethod]
        //Don't need PUT
        public void TestDoesNotContainPUTCanSearchForSubstringsCaseInsensitive()
        {
            Assert.Throws<DoesNotContainException>(
                () => Assert.DoesNotContain("WORLD", "Hello, world!", StringComparison.InvariantCultureIgnoreCase));
        }

        /*
        public void CanUseComparer()
        {
            List<int> list = new List<int>();
            list.Add(42);

            Assert.DoesNotContain(42, list, new MyComparer());
        }
        */

        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestDoesNotContainPUTCanUseComparer([PexAssumeUnderTest] List<int> list, int i)
        {
            list.Add(i);
            Assert.DoesNotContain(i, list, new MyComparer());
        }

        /*
        public void ItemInContainer()
        {
            List<int> list = new List<int> { 42 };

            DoesNotContainException ex =
                Assert.Throws<DoesNotContainException>(() => Assert.DoesNotContain(42, list));

            Assert.Equal("Assert.DoesNotContain() failure: Found: 42", ex.Message);
        }
        */

        [PexMethod]
        public void TestDoesNotContainPUTItemInContainer([PexAssumeUnderTest] List<int> list, int i)
        {
            list.Add(i);
            var ex = Assert.Throws<DoesNotContainException>(() => Assert.DoesNotContain(i, list));

            Assert.Equal("Assert.DoesNotContain() failure: Found: " + i, ex.Message);
        }

        /*
        public void ItemNotInContainer()
        {
            List<int> list = new List<int>();

            Assert.DoesNotContain(42, list);
        }
        */

        [PexMethod]
        public void TestDoesNotContainPUTItemNotInContainer([PexAssumeUnderTest] List<int> list, int i)
        {
            PexAssume.IsFalse(list.Contains(i));
            Assert.DoesNotContain(i, list);
        }

        /*
        public void NullsAllowedInContainer()
        {
            List<object> list = new List<object> { null, 16, "Hi there" };

            Assert.DoesNotContain(42, list);
        } 
        */

        [PexMethod]
        public void TestDoesNotContainPUTNullsAllowedInContainer([PexAssumeUnderTest]List<object> list, int i)
        {
            PexAssume.IsTrue(list.Contains(null));
            Assert.DoesNotContain(i, list);
        }

        /*
        [Fact]
        public void SubstringDoesNotContainIsCaseSensitiveByDefault()
        {
            Assert.DoesNotContain("WORLD", "Hello, world!");
        }
        */

        [PexMethod]
        //Don't need PUT
        public void TestDoesNotContainPUTSubstringDoesNotContainIsCaseSensitiveByDefault()
        {
            Assert.DoesNotContain("WORLD", "Hello, world!");
        }

        /*
        public void SubstringFound()
        {
            Assert.Throws<DoesNotContainException>(() => Assert.DoesNotContain("world", "Hello, world!"));
        } 
        */

        [PexMethod]
        public void TestDoesNotContainPUTSubstringFound([PexAssumeUnderTest]string i, [PexAssumeUnderTest]string j, [PexAssumeUnderTest]string k)
        {
            PexAssume.IsTrue(i == j + k );
            Assert.Throws<DoesNotContainException>(() => Assert.DoesNotContain(j, i));
        }

    }

}