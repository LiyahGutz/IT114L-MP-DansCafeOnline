using Dans_Cafe.App.Products;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
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

        protected void ProdItemRepeater_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Purchase")
            {
                Button btn = (Button)e.CommandSource;
                string IDprod = (string)e.CommandArgument;

                RepeaterItem prod = (RepeaterItem)btn.NamingContainer;
                TextBox prodQty = (TextBox)prod.FindControl("ProductQuantity");
                Label changePrice = (Label)prod.FindControl("PriceLbl");

                if (prodQty != null)
                {
                    if (int.TryParse(prodQty.Text, out int QtyProduct) && double.TryParse(changePrice.Text, out double price))
                    {
                        if (QtyProduct > 0)
                        {
                            double priceChanged = price;
                            priceChanged += price;
                            string priceString = priceChanged.ToString();
                            changePrice.Text = priceString;
                        }
                    }
                }

            }
        }
    }
}