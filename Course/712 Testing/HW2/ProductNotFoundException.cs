using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sample
{
    class ProductNotFoundException: Exception {
        public ProductNotFoundException()
            : base()
        {
        }
    }
}
