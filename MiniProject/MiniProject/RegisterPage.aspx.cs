using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Register_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Email = emailTextBox.Text;
            user.Password = passTextBox.Text;
            user.Name = nameTextBox.Text;

            string conString = WebConfigurationManager.ConnectionStrings["Db"].ConnectionString;
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

                Server.Transfer("LoginRegisterPage.aspx");
            }
            catch (Exception ex)
            {
                RegisterAlert.Visible = true;
                alertText.Text = "Could not insert into DB" + ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}