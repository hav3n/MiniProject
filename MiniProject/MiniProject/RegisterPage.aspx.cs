using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        string conString = @"Data Source=(localdb)\v11.0;Initial Catalog=datastore;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Register_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Email = emailTextBox.Text;
            user.Password = passTextBox.Text;
            user.Name = nameTextBox.Text;


            SqlConnection con = new SqlConnection(conString);
            string query = "Insert into Users (Name,Email,Password) Values (@Name,@Email,@Password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name", user.Name);
            cmd.Parameters.AddWithValue("@Email", user.Email);
            cmd.Parameters.AddWithValue("@Password", user.Password);
            try
            {
                con.Open();
                int rows = cmd.ExecuteNonQuery();

                if (rows >= 1)
                    Server.Transfer("LoginRegisterPage.aspx");
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}