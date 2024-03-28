using Dans_Cafe.App.Carts;
using Dans_Cafe.App.Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class UserCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string username = Request.QueryString["username"];
            Session["username"] = username;

           
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CartData();
            }
            else
            {
                // initial load
                CartData();
            }
        }

        private void CartData()
        {
            RepositoryCarts repoCart = new RepositoryCarts();
            CartItemRepeater.DataSource = repoCart.RetrieveCarts(Request.QueryString["username"]);
            CartItemRepeater.DataBind();
        }
    }
}