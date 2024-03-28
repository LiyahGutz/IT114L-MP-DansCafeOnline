using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Dans_Cafe.App.Products;

namespace Dans_Cafe.App.Carts
{
    public class RepositoryCarts
    {
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Aaliyah Gutierrez\source\repos\DANS\Dans_Cafe\App_Data\DansCafeDB.mdf"";Integrated Security=True";
        
        public IEnumerable<Cart> SearchCart(Cart cart, int quantity)
        {
            List<Cart> carts = new List<Cart>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand cartCommand = connection.CreateCommand())
            {
                connection.Open();
                string cartData = "SELECT * FROM Products WHERE prodID = @prodID";
                cartCommand.CommandText = cartData;
                cartCommand.Parameters.AddWithValue("@prodID", cart.prodID);

                using (SqlDataReader read =  cartCommand.ExecuteReader())
                {
                    while (read.Read())
                    {
                        carts.Add(new Cart()
                        {
                            prodID = read["prodID"].ToString(),
                            Quantity = quantity,
                            
                            Price = Convert.ToSingle(read["Price"]) * quantity
                        });
                    }
                }
            }
            return carts;
        }

        public List<Cart> goodies = new List<Cart>()
        {

        };

        public void AddtoCart(Cart cart, string username)
        {
            goodies.Add(cart);

            PushCart(goodies, username);
        }
        public void PushCart(List<Cart> carts, string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string cartID = GenerateCartID(4) + username;
                    foreach (var items in carts)
                    {
                        using (SqlCommand findCommand = connection.CreateCommand())
                        {
                            findCommand.CommandText = "SELECT COUNT(*) FROM Cart WHERE prodID = @prodID AND cartID LIKE '%' + @Username";
                            findCommand.Parameters.AddWithValue("@prodID", items.prodID);
                            findCommand.Parameters.AddWithValue("@Username", username);

                            int count = (int)findCommand.ExecuteScalar();

                            if (count > 0)
                            {
                                using (SqlCommand modCommand = connection.CreateCommand())
                                {
                                    modCommand.CommandText = "UPDATE Cart SET quantity = quantity + @Quantity WHERE prodID = @prodID";
                                    modCommand.Parameters.AddWithValue("@Quantity", items.Quantity);
                                    modCommand.Parameters.AddWithValue("@prodID", items.prodID);
                                    modCommand.ExecuteNonQuery();
                                }
                            }
                            else
                            {
                                using (SqlCommand makeCommand = connection.CreateCommand())
                                {
                                    makeCommand.CommandText = "INSERT INTO Cart (UserName, prodID, quantity, cartID) " +
                                        "VALUES (@Username, @prodID, @Quantity, @CartID)";
                                    makeCommand.Parameters.AddWithValue("@Username", username);
                                    makeCommand.Parameters.AddWithValue("@prodID", items.prodID);
                                    //makeCommand.Parameters.AddWithValue("@prodName", items.prodName);
                                    makeCommand.Parameters.AddWithValue("@Quantity", items.Quantity);
                                    makeCommand.Parameters.AddWithValue("@CartID", cartID);
                                    makeCommand.ExecuteNonQuery();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception
                    Console.WriteLine("Error: " + ex.Message);
                    // Handle the exception as needed
                    throw; // Re-throw the exception to propagate it further
                }
            }
        }

        public List<Cart> RetrieveCarts(string username)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand getCommand = connection.CreateCommand())
            {
                connection.Open();

                getCommand.CommandText = "SELECT * FROM Cart WHERE cartID LIKE '%' + @Username";
                getCommand.Parameters.AddWithValue("@Username", username);
                using (SqlDataReader reader = getCommand.ExecuteReader())
                {
                    var goodies = new List<Cart>();
                    while (reader.Read())
                    {
                        goodies.Add(new Cart
                        {
                            prodID = reader.GetString(reader.GetOrdinal("prodID")),

                        });
                    }
                    return goodies;
                }
            }
        }


        private string GenerateCartID(int length)
        {
            const string alphanumericChars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            Random random = new Random();
            string randomString = new string(Enumerable.Repeat(alphanumericChars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());

            return randomString;
        }
    }
}