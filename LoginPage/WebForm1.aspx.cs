using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection("Server=LAPTOP-8461GSRU;Database=user_info;Trusted_Connection=True");
                SqlCommand command = new SqlCommand("SELECT * FROM Details WHERE userName=@userName AND passwords=@passwords", connection);

                command.Parameters.AddWithValue("@userName", txtUsername.Text);
                command.Parameters.AddWithValue("@passwords", txtPassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                da.Fill(ds, "Details");

                if (ds.Tables["Details"].Rows.Count == 0)
                {
                    Response.Write("Invalid User");
                }
                else
                {
                    Response.Redirect("Dashboard.aspx");
                }

            }
            catch (SqlException ex)
            {
                Response.Write("SQL Exception: " + ex.Message);
            }
        }
    }
}
