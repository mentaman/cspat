using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Sample;
using System.Linq;

namespace HW2
{
    [PexClass(typeof (ShoppingCart))]
    public partial class ShoppingCartTestPUT
    {
        /*
        [TestMethod, PexMethod]
        public void TestEmpty()
        {
            cart.empty();

            Assert.AreEqual(0, cart.getItemCount());
        }*/


        [PexMethod]
        public void TestEmptyPUT([PexAssumeUnderTest] ShoppingCart cart)
        {
            cart.empty();
            PexAssert.AreEqual(0, cart.getItemCount());
        }

/*
        [TestMethod, PexMethod]
        public void TestAddItem()
        {
            Product book2 = new Product("Pragmatic Project Automation", 29);
            cart.addItem(book2);

            Assert.AreEqual(2, cart.getItemCount());

            double expectedBalance = book1.getPrice() + book2.getPrice();
            Assert.AreEqual(expectedBalance, cart.getBalance(), 0);
        }
        */

        [PexMethod]
        public void TestAddItemPUTOnAddNewOnNotFullCart([PexAssumeUnderTest] ShoppingCart cart, Product item)
        {
            PexAssume.IsTrue(item != null);
            PexAssume.IsTrue(item.getTitle() != null);
            PexAssume.IsTrue(cart.getItemCount() < 5);
            PexAssume.IsTrue(!ShoppingCartNewFactory.Titles.Contains(item.getTitle()));
            PexAssume.IsTrue(item.getPrice() > 0);
            int count = cart.getItemCount();
            int balance = cart.getBalance();
            cart.addItem(item);
            PexAssert.AreEqual(count + 1, cart.getItemCount());
            PexAssert.AreEqual(balance + item.getPrice(), cart.getBalance());
        }

        [PexMethod]
        public void TestAddItemPUTOnAddNewOnFullCart([PexAssumeUnderTest] ShoppingCart cart, Product item)
        {
            PexAssume.IsTrue(item != null);
            PexAssume.IsTrue(item.getTitle() != null);
            PexAssume.IsTrue(cart.getItemCount() == 5);
            PexAssume.IsTrue(!ShoppingCartNewFactory.Titles.Contains(item.getTitle()));
            PexAssume.IsTrue(item.getPrice() > 0);
            int count = cart.getItemCount();
            int balance = cart.getBalance();
            cart.addItem(item);
            PexAssert.AreEqual(count, cart.getItemCount());
            PexAssert.AreEqual(balance, cart.getBalance());
        }

        [PexMethod]
        public void TestAddItemPUTOnAddDuplicateOnNotFullCart([PexAssumeUnderTest] ShoppingCart cart, Product item)
        {
            PexAssume.IsTrue(item != null);
            PexAssume.IsTrue(item.getTitle() != null);
            PexAssume.IsTrue(cart.getItemCount() < 5);
            PexAssume.IsTrue(ShoppingCartNewFactory.Titles.Contains(item.getTitle()));
            PexAssume.IsTrue(item.getPrice() > 0);
            int count = cart.getItemCount();
            int balance = cart.getBalance();
            cart.addItem(item);
            PexAssert.AreEqual(count, cart.getItemCount());
            PexAssert.AreEqual(balance, cart.getBalance());
        }


        /*
        [TestMethod, PexMethod]
        public void TestRemoveItem()
        {
            cart.removeItem(book1);

            Assert.AreEqual(0, cart.getItemCount());
        }*/

        [PexMethod]
        public void TestRemoveItemPUTCheckItemCountAfterRemoveExist([PexAssumeUnderTest] ShoppingCart cart, int i)
        {
            PexAssume.IsTrue(cart.getItemCount() > 1);
            PexAssume.IsTrue(i > 0 && i < cart.getItemCount());
            foreach (var title in ShoppingCartNewFactory.Titles)
            {
                PexAssume.IsNotNull(title);
            }
            var count = cart.getItemCount();
            var existProduct = new Product(ShoppingCartNewFactory.Titles[i], ShoppingCartNewFactory.Prices[i]);
            cart.removeItem(existProduct);
            PexAssert.AreEqual(count - 1, cart.getItemCount());
        }

        /*
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
        }*/

        [PexMethod]
        [PexAllowedException(typeof (ProductNotFoundException))]
        public void TestRemoveItemPUTThrowExceptionWhenRemoveNonExist([PexAssumeUnderTest] ShoppingCart cart,
                                                                      Product product)
        {
            PexAssume.IsNotNull(product);
            PexAssume.IsNotNull(product.getTitle());
            foreach (var title in ShoppingCartNewFactory.Titles)
            {
                PexAssume.IsNotNull(title);
                PexAssume.IsTrue(!product.getTitle().Equals(title));
            }
            cart.removeItem(product);
        }

        /*
        [TestMethod, PexMethod]
        public void TestAddItem()
        {
            Product book2 = new Product("Pragmatic Project Automation", 29);
            cart.addItem(book2);

            Assert.AreEqual(2, cart.getItemCount());

            double expectedBalance = book1.getPrice() + book2.getPrice();
            Assert.AreEqual(expectedBalance, cart.getBalance(), 0);
        }
        */

        [PexMethod]
        public void TestGetBalancePUTOnAllPricePositive([PexAssumeUnderTest] ShoppingCart cart)
        {
            for (int i = 0; i < ShoppingCartNewFactory.Titles.Length; i++)
            {
                PexAssume.IsTrue(ShoppingCartNewFactory.Prices[i] > 0);
                PexAssume.IsTrue(ShoppingCartNewFactory.Prices[i] < (int.MaxValue/5));
            }

            PexAssume.AreEqual(ShoppingCartNewFactory.Prices.Sum(), cart.getBalance());
        }

        [PexMethod]
        public void TestGetBalancePUTOnSomePriceNegative([PexAssumeUnderTest] ShoppingCart cart, Product product)
        {
            PexAssume.IsNotNull(product);
            PexAssume.IsNotNull(product.getTitle());
            PexAssume.IsTrue(product.getPrice() < 0);
            PexAssume.IsTrue(cart.getItemCount() < 5);
            foreach (var title in ShoppingCartNewFactory.Titles)
            {
                PexAssume.IsNotNull(title);
                PexAssume.IsTrue(!product.getTitle().Equals(title));
            }
            var balance = cart.getBalance();
            cart.addItem(product);
            PexAssert.AreEqual(balance, cart.getBalance());
        }
    }
}