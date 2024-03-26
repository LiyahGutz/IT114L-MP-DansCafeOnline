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
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            Session["username"] = username;
        }

        protected void TakeASip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx?username=" + Session["username"]);
        }
    }
}