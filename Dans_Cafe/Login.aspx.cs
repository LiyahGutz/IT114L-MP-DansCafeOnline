using Dans_Cafe.App.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            var userRepo = new RepositoryUsers();

            var currentUser = userRepo.LogIn(userNtxtbox.Text);

            if (currentUser != null && currentUser.Any())
            {
                foreach (var user in currentUser)
                {
                    if (user.Username != null)
                    {
                        if (user.Password == passtxtbox.Text)
                        {
                            if (user.Username == "staff" && user.Password == "staff")
                            {
                                Response.Redirect($"StaffView.aspx?username={userNtxtbox.Text}");
                            }
                            else if (user.Username == "admin" && user.Password == "admin")
                            {
                                Response.Redirect($"AdminView.aspx?username={userNtxtbox.Text}");
                            }
                            else
                            {
                                Response.Redirect($"Home.aspx?username={userNtxtbox.Text}");
                            }
                        }
                        //    Response.Redirect($"Home.aspx?username={userNtxtbox.Text}");
                        //}
                        //else if (user.Username == "staff" && user.Password == "staff")
                        //{
                        //    Response.Redirect($"StaffView.aspx?username={userNtxtbox.Text}");
                        //}
                        //else if (user.Username == "admin" && user.Password == "admin")
                        //{
                        //    Response.Redirect($"AdminView.aspx?username={userNtxtbox.Text}");
                        //}
                        else
                        {
                            string wrongPass = "Incorrect Password";
                            Response.Write($"<script>alert('{wrongPass}')</script>");
                        }
                    }
                    
                    else
                    {
                        string notUser = "User does not exist.";
                        Response.Write($"<script>alert('{notUser}')</script>");
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
