using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;

namespace pex.tests.xunit
{
    // generalize 5 tests
    [PexClass(typeof(Assert))]
    public partial class EmptyTests
    {
        /*
        public void IsEmpty()
        {
            List<int> list = new List<int>();
            Assert.Empty(list);
        }
        */

        [PexMethod]
		//Pattern 2.2
        public void TestEmptyPUTIsEmpty([PexAssumeUnderTest]List<int> list)
        {
            PexAssume.IsTrue(list.Count == 0);
            Assert.Empty(list);
        }

        /*
        public void IsNotEmpty()
        {
            List<int> list = new List<int>();
            list.Add(42);

            EmptyException ex = Assert.Throws<EmptyException>(() => Assert.Empty(list));

            Assert.Equal("Assert.Empty() failure", ex.Message);
        }
        */

        [PexMethod]
		//Pattern 2.2
        public void TestEmptyPUTIsNotEmpty([PexAssumeUnderTest]List<int> list, int i)
        {
            list.Add(i);
            var ex = Assert.Throws<EmptyException>(() => Assert.Empty(list));
            PexAssert.AreEqual("Assert.Empty() failure", ex.Message);
        }

        /*
         public void NullIsNotEmpty()
        {
            Assert.Throws<ArgumentNullException>(() => Assert.Empty(null));
        }
        */

        [PexMethod]
        //Don't need PUT
        public void TestEmptyPUTNullIsNotEmpty()
        {
            PexAssert.Throws<ArgumentNullException>(() => Assert.Empty(null));
        }

        /*
        public void IsEmpty()
        {
            Assert.Empty("");
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEmptyPUTStringIsEmpty()
        {
            Assert.Empty("");
        }

        /*
         public void IsNotEmpty()
        {
            EmptyException ex = Assert.Throws<EmptyException>(() => Assert.Empty("Foo"));

            Assert.Equal("Assert.Empty() failure", ex.Message);
        }
         */

        [PexMethod]
        //2.2
        public void TestEmptyPUTStringIsNotEmpty([PexAssumeUnderTest]string i)
        {
            PexAssume.IsTrue(i.Length > 0);
            var ex = Assert.Throws<EmptyException>(() => Assert.Empty(i));
            PexAssert.AreEqual("Assert.Empty() failure", ex.Message);
        }
    }

}