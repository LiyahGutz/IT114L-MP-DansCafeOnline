using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Dans_Cafe.App.Users
{
    public class RepositoryUsers
    {
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Aaliyah Gutierrez\source\repos\Dans_Cafe\Dans_Cafe\App_Data\UserSchema.mdf"";Integrated Security=True";

        public void NewUser(User user)
        {

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand insertCommand = new SqlCommand("INSERT INTO RegisteredUsers VALUES('"
                    + user.FirstName
                    + "','" + user.LastName
                    + "','" + user.Username
                    + "','" + user.Email
                    + "','" + user.Password
                    + "');", connection);

                insertCommand.ExecuteNonQuery();
                connection.Close();
            }
        }

        public IEnumerable<User> LogIn(string username)
        {

            using (var connection = new SqlConnection(connectionString))
            using (var logCommand = connection.CreateCommand())
            {
                connection.Open();

                string loginData = "SELECT UserName, Password FROM RegisteredUsers WHERE UserName = @username";
                logCommand.CommandText = loginData;
                logCommand.Parameters.AddWithValue("@username", username);

                return logCommand
                    .ExecuteReader()
                    .Cast<IDataRecord>()
                    .Select(row => new User()
                    {
                        Username = (string)row["UserName"],
                        Password = (string)row["Password"]
                    })
                    .ToList();
            }
        }

        public IEnumerable<User> GetAllUsers()
        {
            using (var connection = new SqlConnection(connectionString))
            using (var logCommand = connection.CreateCommand())
            {
                connection.Open();

                string getData = "SELECT * FROM RegisteredUsers";
                logCommand.CommandText = getData;

                return logCommand
                    .ExecuteReader()
                    .Cast<IDataRecord>()
                    .Select(row => new User()
                    {
                        Username = (string)row["UserName"],
                        Email = (string)row["Email"],
                    })
                    .ToList();
            }
        }
    }
}
