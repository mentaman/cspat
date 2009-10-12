using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass]
    public partial class EmptyTests
    {
        /*
        public void IsEmpty()
        {
            List<int> list = new List<int>();

            Assert.Empty(list);
        }
        */

        [PexMethod, PexAllowedException(typeof(EmptyException))]
        public void TestemptyPUTIsEmpty([PexAssumeUnderTest]List<int> list)
        {
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
        public void TestemptyPUTIsNotEmpty([PexAssumeUnderTest]List<int> list, int i)
        {
            list.Add(i);
            EmptyException ex = Assert.Throws<EmptyException>(() => Assert.Empty(list));

            Assert.Equal("Assert.Empty() failure", ex.Message);
        }

    }

}