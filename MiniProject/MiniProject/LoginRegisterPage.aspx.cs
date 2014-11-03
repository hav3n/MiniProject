using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class LoginRegisterPage : System.Web.UI.Page
    {
        string conString = WebConfigurationManager.ConnectionStrings["Db"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Response.Cookies["userData"];

            if (cookie != null && !this.IsPostBack)
            {
                userTextBox.Text = cookie["Email"];
                passTextBox.Text = cookie["Pass"];
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", userTextBox.Text);
                cmd.Parameters.AddWithValue("@Password", passTextBox.Text);

                con.Open();
                
                SqlDataReader reader = cmd.ExecuteReader();
              
                int rows;
                using (DataTable dt = new DataTable())
                {
                    dt.Load(reader);
                    rows = dt.Rows.Count;
                }



                if (rows == 1)
                {

                    //Store cookie if checked
                    if (rememeberCheckBox.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("userData");

                       
                            cookie = new HttpCookie("userData");
                            cookie.Expires = DateTime.Now.AddHours(1);
                            reader.Close();
                            reader = cmd.ExecuteReader();
                            reader.Read();
                            cookie["Name"] = reader["Name"].ToString();
                            cookie["Email"] = userTextBox.Text;
                            cookie["Pass"] = passTextBox.Text;

                            Response.Cookies.Add(cookie);
                        
                    }
                    reader.Close();
                    reader = cmd.ExecuteReader();
                    reader.Read();
                    Session["Name"] = reader["Name"];
                    Server.Transfer("MainPage.aspx");
                }
                else
                {
                    LoginAlert.Visible = true;

                   // Label text = FindControl("alertText") as Label;
                    alertText.Text = "Could not find User!";

                }

                con.Close();
            }
            catch (Exception ex)
            {
                LoginAlert.Visible = true;
                alertText.Text = "Could not open DB connection! "+ex;
            }

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegisterPage.aspx");
        }
    }
}