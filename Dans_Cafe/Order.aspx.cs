using Dans_Cafe.App.Carts;
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
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string username = Request.QueryString["username"];
            Session["username"] = username;

            ProductData();
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in ProdItemRepeater.Items)
            {
                Button Button = (Button)item.FindControl("PushCart"); // Assuming PushCart is a LinkButton
                if (Button != null)
                {
                    ScriptManager.GetCurrent(this).RegisterPostBackControl(Button);
                }
            }
        }

        protected void ProductData()
        {
            RepositoryProducts repoProduct = new RepositoryProducts();
            ProdItemRepeater.DataSource = repoProduct.AllProducts();
            ProdItemRepeater.DataBind();
        }

        protected void ProdItemRepeater_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "PushCart")
            {
                Button btn = (Button)e.CommandSource;
                string IDprod = (string)e.CommandArgument;

                RepeaterItem prod = (RepeaterItem)btn.NamingContainer;
                TextBox prodQty = (TextBox)prod.FindControl("ProductQuantity");
                

                if (prodQty != null)
                {
                    if (int.TryParse(prodQty.Text, out int QtyProduct))
                    {
                        if (QtyProduct > 0)
                        {
                            if (QtyProduct > 100)
                            {
                                Response.Write($"<script>alert('Maximum Value Reached');</script>");
                            }

                            var repoCart = new RepositoryCarts();
                            var selectedProd = repoCart.SearchCart(new Cart()
                            {
                                prodID = IDprod,
                            }, QtyProduct);
                            string username = Request.QueryString["username"];
                            repoCart.AddtoCart(selectedProd.FirstOrDefault(), username);

                            Response.Write($"<script>alert('Item is now added to Cart');</script>");

                        }
                        else
                        {
                            Response.Write($"<script>alert('Invalid Input');</script>");
                        }
                    }
                }

            }
        }

        private string GenerateRandomAlphanumericString(int length)
        {
            const string alphanumericChars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            Random random = new Random();
            string randomString = new string(Enumerable.Repeat(alphanumericChars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());

            return randomString;
        }

        protected bool validPage()
        {
            if (Page.IsValid)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}