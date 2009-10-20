using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class TrueTests
    {
//        [Fact]
//        public void AssertTrue()
//        {
//            Assert.True(true);
//        }
//



        //        [Fact]
        //        public void AssertTrueThrowsExceptionWhenFalse()
        //        {
        //            TrueException exception = Assert.Throws<TrueException>(() => Assert.True(false));
        //
        //            Assert.Equal("Assert.True() Failure", exception.UserMessage);
        //        }

        [PexMethod]
        [PexAllowedException(typeof(TrueException))]
		//Pattern 2.1 2.10
        public void TestTruePUTAssert(bool item )
        {
            Assert.True(item);
        }


    }
}