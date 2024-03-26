using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Dans_Cafe.App.Products
{
    
    public class RepositoryProducts
    {
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Aaliyah Gutierrez\source\repos\DANS\Dans_Cafe\App_Data\DansCafeDB.mdf"";Integrated Security=True";
        public IEnumerable<Product> AllProducts()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand getCommand = connection.CreateCommand())
            {
                connection.Open();
                getCommand.CommandText = @"
                    SELECT prodID, prodName, prodDesc, prodType, 
                    Price, prodSize, prodStatus 
                    FROM Products;
                ";

                using (SqlDataReader reader = getCommand.ExecuteReader())
                {
                    var goodies = new List<Product>();
                    while (reader.Read())
                    {
                        goodies.Add(new Product
                        {
                            ID = reader.GetString(reader.GetOrdinal("prodID")),
                            Name = reader.GetString(reader.GetOrdinal("prodName")),
                            Description = reader.GetString(reader.GetOrdinal("prodDesc")),
                            Type = reader.GetString(reader.GetOrdinal("prodType")),
                            Price = reader.GetDouble(reader.GetOrdinal("Price")),
                            Size = reader.GetString(reader.GetOrdinal("prodSize")),
                            Status = reader.GetBoolean(reader.GetOrdinal("prodStatus")),

                        });
                    }
                    return goodies;
                }
            }
                
            
        }
    }
}