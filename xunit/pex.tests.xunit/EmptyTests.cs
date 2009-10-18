using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
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
        public void TestEmptyPUTIsEmpty([PexAssumeUnderTest]List<int> list)
        {
            list.Clear();
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
        public void TestEmptyPUTIsNotEmpty([PexAssumeUnderTest]List<int> list, int i)
        {
            list.Add(i);
            var ex = Assert.Throws<EmptyException>(() => Assert.Empty(list));
            Assert.Equal("Assert.Empty() failure", ex.Message);
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
            Assert.Throws<ArgumentNullException>(() => Assert.Empty(null));
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
        //Don't need PUT
        public void TestEmptyPUTStringIsNotEmpty()
        {
            var ex = Assert.Throws<EmptyException>(() => Assert.Empty("Foo"));
            Assert.Equal("Assert.Empty() failure", ex.Message);
        }
    }

}