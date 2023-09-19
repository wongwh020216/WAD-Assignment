using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WAD_Assignment
{
    

    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into RegisterTable " + "(FirstName,LastName,email,password,contacts)values(@FirstName,@LastName,@email,@password,@contacts)", con);

                cmd.Parameters.AddWithValue("FirstName", firstNameTextBox.Text);
                cmd.Parameters.AddWithValue("LastName", lastNameTextBox.Text);
                cmd.Parameters.AddWithValue("email", emailTextBox.Text);
                cmd.Parameters.AddWithValue("password", passwordTextBox.Text);
                cmd.Parameters.AddWithValue("contacts", phoneNumberTextBox.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect(Request.Url.AbsoluteUri);

            }
           

        }

       
    }
}