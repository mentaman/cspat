using Microsoft.Pex.Framework;
using Xunit;

namespace pex.tests.xunit
{

    public class DelegateHolder
    {
        private bool methodCalled;

        public bool MethodCalled
        {
            get { return methodCalled; }
        }

        public void MockThrowsDelegate()
        {
            methodCalled = true;
            var call = PexChoose.FromCall(this);
            if (call.ChooseThrowException())
            {
                throw call.ChooseException();
            }
        }
    }

    [PexClass(typeof(Assert))]
    public partial class ThrowsTests
    {
//        [Fact]
//        public void DoesNotThrowException()
//        {
//            bool methodCalled = false;
//
//            Assert.DoesNotThrow(() => methodCalled = true);
//
//            Assert.True(methodCalled);
//        }

        [PexMethod]
        public void TestDoesNotThrowPUTDoesNotThrowException()
        {
            var holder = new DelegateHolder();
            Assert.DoesNotThrow(holder.MockThrowsDelegate);
            PexAssert.IsTrue(holder.MethodCalled);
        }
    }
}