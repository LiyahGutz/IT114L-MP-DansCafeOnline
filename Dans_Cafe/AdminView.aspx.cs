using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class AdminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateStaff.aspx");
        }
        protected void RemoveStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageStaff.aspx");
        }
    }
}