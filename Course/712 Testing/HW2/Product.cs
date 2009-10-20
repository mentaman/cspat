using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sample
{
    class Product
    {
        private String title;
        private int price;

        public Product(String title, int price) 
        {
            this.title = title;
            this.price = price;
        }

        public String getTitle() 
        {
            return title;
        }

        public int getPrice() 
        {
            return price;
        }

        override public bool Equals(Object o) 
        {
            if (o.GetType()== this.GetType()) 
            {
                Product p = (Product)o;
                return p.getTitle().Equals(title);
            }
            return false;
        }

        override public int GetHashCode()
        {
            return title.GetHashCode() + price;
        }
    
   }
}
