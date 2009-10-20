// <copyright file="ShoppingCartNewFactory.cs" company="">Copyright ©  2009</copyright>

using System;
using Microsoft.Pex.Framework;
using Sample;

namespace Sample
{
    /// <summary>A factory for Sample.ShoppingCart instances</summary>
    public static partial class ShoppingCartNewFactory
    {
        public static string[] Titles;
        public static int[] Prices;
        [PexFactoryMethod(typeof(ShoppingCart))]
        public static ShoppingCart Create(String[] titles,int[] prices)
        {
            PexAssume.AreEqual(titles.Length,prices.Length); 
            PexAssume.IsTrue(titles.Length <= 6); //MaxSize is 5
            Titles = titles;
            Prices = prices;
            ShoppingCart shoppingCart = new ShoppingCart();
            for (int i = 0; i < titles.Length; i++)
            {
                var product = new Product(titles[i], prices[i]);
                shoppingCart.addItem(product);
            }
            return shoppingCart;
        }
    }
}
