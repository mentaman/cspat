using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class AssertExceptionTests
    {
        /*
        public void PreservesUserMessage()
        {
            AssertException ex = new AssertException("UserMessage");

            Assert.Equal("UserMessage", ex.UserMessage);
        }
        */

        [PexMethod]
        //Round trip
        public void TestAssertExceptionPUTPreservesUserMessage()
        {
            var ex = new AssertException("UserMessage");
            PexAssert.AreEqual("UserMessage", ex.UserMessage);
        }

        /*
        public void UserMessageIsTheMessage()
        {
            AssertException ex = new AssertException("UserMessage");

            Assert.Equal(ex.UserMessage, ex.Message);
        }
         */

        [PexMethod]
        //Factory Method Used
        public void TestAssertExceptionPUTUserMessageIsTheMessage([PexAssumeUnderTest] AssertException ex)
        {
            PexAssert.AreEqual(ex.UserMessage, ex.Message);
        }
    }
}