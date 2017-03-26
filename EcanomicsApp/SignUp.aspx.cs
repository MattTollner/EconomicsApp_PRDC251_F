using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

        using(SqlConnection con = new SqlConnection(CS))
        {

            if (tbUsername.Text != "" & tbFirstName.Text != "" & tbLastName.Text != "" & tbPass.Text != "" & tbCPass.Text != "" & tbEmail.Text != "")
            {
                if(tbPass.Text == tbCPass.Text)
                {
                    if(SelectType.Value == "Student")
                    {
                        SqlCommand cmd = new SqlCommand("insert into Student values('"

                                    + tbUsername.Text + "','"
                                    + tbFirstName.Text + "','"
                                    + tbLastName.Text + "','"
                                    + tbPass.Text + "','"
                                    + tbEmail.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();

                        lblMsg.ForeColor = Color.Green;
                        lblMsg.Text = "Student Registration Complete...";
                        Response.Redirect("~/SignIn.aspx");
                    } else
                    {
                        SqlCommand cmd = new SqlCommand("insert into Teacher values('"

                                    + tbUsername.Text + "','"
                                    + tbFirstName.Text + "','"
                                    + tbLastName.Text + "','"
                                    + tbPass.Text + "','"
                                    + tbEmail.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();

                        lblMsg.ForeColor = Color.Green;
                        lblMsg.Text = "Teacher Registration Complete...";
                        Response.Redirect("~/SignIn.aspx");
                    }

                    
                } else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match...";
;                }

                
            } else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All fields are required...";
            }

                
        }
    }
}