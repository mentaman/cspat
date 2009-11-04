using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;

namespace pex.tests.xunit
{
    //generalize 2 tests
    [PexClass(typeof(Assert))]
    public partial class FalseTests
    {
        /*
        [Fact]
        public void AssertFalse()
        {
            Assert.False(false);
        }

        [Fact]
        public void AssertFalseThrowsExceptionWhenTrue()
        {
            try
            {
                Assert.False(true);
            }
            catch (AssertException exception)
            {
                Assert.Equal("Assert.False() Failure", exception.UserMessage);
            }
        }
        */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTFalseTests([PexAssumeUnderTest]bool i)
        {
            try
            {
                Assert.False(i);
            }
            catch (AssertException exception)
            {
                PexAssert.AreEqual("Assert.False() Failure", exception.UserMessage);
            }
        }

    }
}