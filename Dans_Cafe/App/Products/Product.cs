using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dans_Cafe.App.Products
{
    public class Product
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public double Price { get; set; }
        public string Size { get; set; }
        public bool Status { get; set; }

    }
}