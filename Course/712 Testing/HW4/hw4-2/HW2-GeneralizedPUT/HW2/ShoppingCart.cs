using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace Sample
{
    public class ShoppingCart
    {
        private ArrayList items;
        private int MaxSize;

        public ShoppingCart() 
        {
            items = new ArrayList();
            MaxSize = 5;
        }

        public int getBalance() 
        {
            int balance = 0;           
            IEnumerator i = items.GetEnumerator(); 
            while (i.MoveNext()) 
            {
                Product item = (Product)i.Current;
                int price = item.getPrice();
                if (price > 0)
                    balance += price;
            }
            return balance;
        }

        public void addItem(Product item) 
        {
            if (!items.Contains(item) && items.Count < MaxSize)
            {
                items.Add(item);
            }
        }

        public void removeItem(Product item) 
        {
            if (!items.Contains(item))
            {
                throw new ProductNotFoundException();
            } 
            else 
            {
                items.Remove(item);
            }
        }

        public int getItemCount() 
        {
            return items.Count;
        }

        public void empty() 
        {
            items.Clear();
        }
    }
}
