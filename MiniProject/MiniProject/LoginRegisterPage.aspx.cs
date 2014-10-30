using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
     

    public partial class LoginRegisterPage : System.Web.UI.Page
    {
        string conString = @"Data Source=(localdb)\v11.0;Initial Catalog=datastore;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT * FROM users";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read())
            {
                if ((string)reader["Email"] == userTextBox.Text && (string)reader["Password"] == passTextBox.Text)
                {
                    Session["Id"] = reader["Id"];
                    Response.Redirect("MainPage.aspx");
                    break;
                }
            }
            con.Close();
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
        
        }
    }
}