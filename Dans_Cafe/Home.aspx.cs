using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(Request.QueryString["username"]))
                    this.Page.MasterPageFile = "~/BasicMasterPage.master";
                else
                    this.Page.MasterPageFile = "~/lol.master";

            }
            catch (Exception ex)
            {

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            Session["firstname"] = username;
        }
    }
}