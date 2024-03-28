using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            string logOut = "Logged Out Successfully.";
            Response.Write($"<script>alert('{logOut}')</script>");
            Response.Redirect("Login.aspx");

        }
    }
}