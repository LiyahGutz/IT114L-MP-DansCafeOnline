using Dans_Cafe.App.Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string username = Request.QueryString["username"];
            Session["username"] = username;

            
            ProductData();
        }

        protected void ProductData()
        {
            RepositoryProducts repoProduct = new RepositoryProducts();
            ProdItemRepeater.DataSource = repoProduct.AllProducts();
            ProdItemRepeater.DataBind();
        }
    }
}