using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Dans_Cafe.App.Carts
{
    public class RepositoryCarts
    {
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Aaliyah Gutierrez\source\repos\DANS\Dans_Cafe\App_Data\DansCafeDB.mdf"";Integrated Security=True";
        
        public IEnumerable<Cart> AllCarts()
        {
            List<Cart> carts = new List<Cart>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand cartCommand = connection.CreateCommand())
            {
                connection.Open();
                cartCommand.CommandText = @"
                    ";
            }
            return carts;
        }
    }
}