using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            var userRepo = new RepositoryUsers();
            var username = userNtxtbox.Text;
            var password = passtxtbox.Text;

            try
            {
                var currentUser = userRepo.LogIn(username, password);

                if (currentUser != null)
                {
                    Response.Redirect($"Home.aspx?username={username}");
                }
                else
                {
                    string errorMessage = "Incorrect username or password.";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);
                }
            }
            catch (Exception ex)
            {
                string errorMessage = "An error occurred while logging in.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);
                // Log the exception
                // LogException(ex);
            }
        }
    }
}

            //var connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\Aaliyah Gutierrez\\source\\repos\\Login\\Login\\App_Data\\Users.mdf\";Integrated Security=True";

            //using (var connection = new SqlConnection(connectionString))
            //{
            //    connection.Open();
            //}
        }
    }
}
