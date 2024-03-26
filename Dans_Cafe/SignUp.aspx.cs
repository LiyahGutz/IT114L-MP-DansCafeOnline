using Dans_Cafe.App.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dans_Cafe
{
    public partial class SignUp : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (validSignUp())
            {
                string newEmail = Email.Text;

                if (!IsExistingUser(newEmail))
                {
                    var userRepo = new RepositoryUsers();

                    userRepo.NewUser(new User()
                    {
                        FirstName = Fname.Text,
                        LastName = Lname.Text,
                        Email = newEmail,
                        Username = Username.Text,
                        Password = Password.Text,
                    });

                    ClearValues();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You are now registered!');", true);
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Email {newEmail} is already used.');", true);
                    ClearValues();
                }
            }
        }

        protected bool validSignUp()
        {
            return Page.IsValid;
        }

        protected void ClearValues()
        {
            Fname.Text = "";
            Lname.Text = "";
            Email.Text = "";
            Username.Text = "";
            IniPword.Text = "";
            Password.Text = "";
        }

        protected bool IsExistingUser(string newEmail)
        {
            var userRepo = new RepositoryUsers();
            return userRepo.GetAllUsers().Any(user => user.Email == newEmail);
        }
    }
}
