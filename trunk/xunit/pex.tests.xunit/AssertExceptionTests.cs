using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    // generalize 2 tests
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
        //Constructor Pattern 2.3
        public void TestAssertExceptionPUTPreservesUserMessage()
        {
            var usermessage = "UserMessage";
            var ex = new AssertException(usermessage);
            PexAssert.AreEqual(usermessage, ex.UserMessage);
        }

        /*
        public void UserMessageIsTheMessage()
        {
            AssertException ex = new AssertException("UserMessage");

            Assert.Equal(ex.UserMessage, ex.Message);
        }
         */

        [PexMethod]
        //Pattern 2.3
        public void TestAssertExceptionPUTUserMessageIsTheMessage([PexAssumeUnderTest]AssertException ex)
        {
            PexAssume.IsTrue(ex.UserMessage != null);
            PexAssert.AreEqual(ex.UserMessage, ex.Message);
        }

    }
}