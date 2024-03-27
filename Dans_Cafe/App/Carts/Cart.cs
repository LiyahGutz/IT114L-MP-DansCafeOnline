using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dans_Cafe.App.Carts
{
    public class Cart
    {
        public string orderID { get; set; }
        public string Username { get; set; }
        public string prodID { get; set; }
        public string prodName { get; set; }
        public int Quantity { get; set; }
        public double Price { get; set; }
        public double OrderTotal { get; set; }
        public string Status { get; set; }
        public TimeSpan TimeOrder { get; set; }
        public DateTime OrderDate { get; set; }
        public string DateTimeOrder { get; set; }
        public string Size { get; set; }
    }
}