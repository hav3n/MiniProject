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
            user.RegDate = DateTime.Today;


            SqlConnection con = new SqlConnection(conString);
            string query = "Insert into users (Email, Password, RegDate) Values (";
            query += "'" + user.Email + "','" + user.Password + "',CURRENT_TIMESTAMP)";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int rows = cmd.ExecuteNonQuery();
            Response.Write("Please login now");
            con.Close();
        }
    }
}