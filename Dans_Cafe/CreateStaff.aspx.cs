using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class CreateStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write($"<script>alert('Staff account successfully created.')</script>");
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtPhoneNumber.Text = "";
            txtAddress.Text = "";

        }
    }
}