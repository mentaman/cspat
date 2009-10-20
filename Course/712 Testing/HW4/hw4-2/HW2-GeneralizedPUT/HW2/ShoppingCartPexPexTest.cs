using Microsoft.Pex.Framework;
using Sample;

namespace HW2
{
    // In pex 0.16 it could support multiple factory methods for one class
    public static partial class ShoppingCartFactory
    {
        public static string ProductTitle;

//        [PexFactoryMethod(typeof(ShoppingCart))]
        public static ShoppingCart Create(Product product)
        {
            ShoppingCart shoppingCart = new ShoppingCart();
            shoppingCart.addItem(product);
            ProductTitle = product.getTitle();
            return shoppingCart;
        }

//        [PexFactoryMethod(typeof(ShoppingCart))]
        public static ShoppingCart CreateFullCart()
        {
            ShoppingCart shoppingCart = new ShoppingCart();
            for (int i = 0; i < 5; i++)
            {
                var product = new Product("Product_" + i, 1);
                shoppingCart.addItem(product);
            }
            return shoppingCart;
        }

//        [PexFactoryMethod(typeof(ShoppingCart))]
        public static ShoppingCart CreateEmptyCart()
        {
            return new ShoppingCart();
        }

    }

    [PexClass(typeof (ShoppingCart))]
    public partial class ShoppingCartPexPexTest
    {
        [PexMethod]
        public void TestConstructor()
        {
            var cart = new ShoppingCart();
            PexAssert.AreEqual(0, cart.getItemCount());
        }

        [PexMethod]
        public void TestEmpty([PexAssumeUnderTest] ShoppingCart cart)
        {
            cart.empty();
            PexAssert.AreEqual(0, cart.getItemCount());
        }

        [PexMethod]
        public void TestGetBalance([PexAssumeUnderTest] ShoppingCart cart)
        {
            cart.getBalance();
        }

        [PexMethod]
        public void TestGetBalanceWithNegativeNumber([PexAssumeUnderTest] ShoppingCart cart,
                                                   [PexAssumeUnderTest] Product product)
        {
            PexAssume.IsTrue(product.getPrice() < 0); // This make sures that the assertion will fail in the C# version
            int originalBalance = cart.getBalance();
            int newBalance = originalBalance + product.getPrice();
            cart.addItem(product);
            // In java version, it just sum up the prices for each item without caring it is positive or negative
            PexAssert.AreEqual(newBalance, cart.getBalance());
        }

        [PexMethod]
        public void TestAddItem([PexAssumeUnderTest] ShoppingCart cart, [PexAssumeUnderTest] Product product)
        {
            // This assume makes sure that pex use only the default constructor factory method, which could reduce the exploration time
            PexAssume.IsTrue(cart.getItemCount() == 0);
            double originalCount = cart.getItemCount();
            cart.addItem(product);
            PexAssert.AreEqual(originalCount + 1, cart.getItemCount());
        }

        [PexMethod]
        public void TestAddItemWithSameTitle([PexAssumeUnderTest] ShoppingCart cart,
                                                [PexAssumeUnderTest] Product product)
        {
            // This make sures that the assertion will fail in the C# version 
            PexAssume.AreEqual(ShoppingCartFactory.ProductTitle, product.getTitle());

            double originalCount = cart.getItemCount();
            cart.addItem(product);
            // When Pex generate two products with the same name, this assertion will fail
            PexAssert.AreEqual(originalCount + 1, cart.getItemCount());
        }


        [PexMethod]
        public void TestAddItemToFullCart([PexAssumeUnderTest] ShoppingCart cart,
                                                [PexAssumeUnderTest] Product product)
        {
            // This make sures that the assertion will fail in the C# version 
            PexAssume.IsTrue(cart.getItemCount() == 5);

            double originalCount = cart.getItemCount();
            cart.addItem(product);

            // When Shopping Cart is full, in C# version it can not add more product
            PexAssert.AreEqual(originalCount + 1, cart.getItemCount());
        }


        [PexMethod]
        public void TestRemoveItem([PexAssumeUnderTest] ShoppingCart cart, [PexAssumeUnderTest] Product product)
        {
            int originalItemCount = cart.getItemCount();
            cart.removeItem(product);
            PexAssert.AreEqual(originalItemCount - 1, cart.getItemCount());
        }
    }

    [PexClass(typeof (Product))]
    public partial class ProductPexTest
    {
        [PexMethod]
        public void TestCreationOfProduct(string title, int price)
        {
            var product = new Product(title, price);
            PexAssert.AreEqual(title, product.getTitle());
            PexAssert.AreEqual(price, product.getPrice());
        }

        [PexMethod]
        public bool TestEqualsObject([PexAssumeUnderTest]Product a, object b)
        {
            if (a.Equals(b))
            {
                return true;
            }
            return false;
        }

        [PexMethod]
        public bool TestEqualsProduct([PexAssumeUnderTest]Product a, [PexAssumeUnderTest]Product b)
        {
            if (a.Equals(b))
            {
                return true;
            }
            return false;
        }

        [PexMethod]
        public bool TestGetHashCode([PexAssumeUnderTest]Product a, [PexAssumeUnderTest]Product b)
        {
            if (a.GetHashCode().Equals(b.GetHashCode()))
            {
                return true;
            }
            ;
            return false;
        }
    }
}