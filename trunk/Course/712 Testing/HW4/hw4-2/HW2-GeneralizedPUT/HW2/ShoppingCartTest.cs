using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Sample;

namespace HW2
{
    [TestClass, PexClass(typeof(ShoppingCart))]
    public partial class ShoppingCartTest
    {
        private ShoppingCart cart;
        private Product book1;

        [TestInitialize]
        public void SetUp()
        {
            cart = new ShoppingCart();

            book1 = new Product("Pragmatic Unit Testing", 29);

            cart.addItem(book1);
        }

        [TestMethod,PexMethod]
        public void TestEmpty()
        {
            cart.empty();

            Assert.AreEqual(0, cart.getItemCount());
        }

        [TestMethod, PexMethod]
        public void TestAddItem()
        {
            Product book2 = new Product("Pragmatic Project Automation", 29);
            cart.addItem(book2);

            Assert.AreEqual(2, cart.getItemCount());

            double expectedBalance = book1.getPrice() + book2.getPrice();
            Assert.AreEqual(expectedBalance, cart.getBalance(), 0);
        }


        [TestMethod, PexMethod]
        public void TestRemoveItem()
        {
            cart.removeItem(book1);

            Assert.AreEqual(0, cart.getItemCount());
        }

        [TestMethod, PexMethod]
        public void TestRemoveItemNotInCart()
        {
            try
            {
                Product book3 = new Product("Pragmatic Version Control", 29);
                cart.removeItem(book3);

                Assert.Fail("Should raise a ProductNotFoundException");
            }
            catch (ProductNotFoundException expected)
            {
                // successful test
            }
        }
    }
}