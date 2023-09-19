using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Assignment
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True"))
            {
                string query = "SELECT COUNT(1) FROM RegisterTable WHERE StudentId=@StudentId AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@StudentId", studentIdTextBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", passwordTextBox.Text.Trim());
                sqlCon.Open();
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["StudentId"] = studentIdTextBox.Text.Trim();
                    
                    sqlCmd.ExecuteNonQuery();
                    sqlCon.Close();
                    Response.Redirect("Homepage.aspx");
                }
                else { lblErrorMessage.Visible = true; }

                
            }
        }
    }
}