using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminCreateAccount : System.Web.UI.Page
{
    private bool exists = false;
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void checkAdminUserName()
    {
        using (SqlConnection con2 = new SqlConnection(CS))
        {
            con2.Open();

            // create a command to check if the username exists
            using (SqlCommand cmd2 = new SqlCommand("select count(*) from [Admin] where Username = @Username", con2))
            {
                cmd2.Parameters.AddWithValue("Username", tbUsername.Text);
                exists = (int)cmd2.ExecuteScalar() > 0;
            }



        }
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;



        using (SqlConnection con = new SqlConnection(CS))
        {

            if (tbUsername.Text != "" & tbPass.Text != "" & tbCPass.Text != "")
            {
                if (tbPass.Text == tbCPass.Text)
                {
                    if(exists == false)
                    {
                        string hashedPass = HashingPassword.ComputeHash(tbPass.Text, null);




                        SqlCommand cmd = new SqlCommand("insert into Admin values('"

                                    + tbUsername.Text + "','"
                                    + hashedPass + "')", con);

                        try
                        {
                            con.Open();
                            cmd.ExecuteNonQuery();
                            lblMsg.ForeColor = Color.Green;
                            lblMsg.Text = "Admin Account Created...";
                            Response.Redirect("~/Admin/AdminHome.aspx");
                        }
                        catch (SqlException ex)
                        {

                            lblMsg.Text = ex.Message;
                            lblMsg.ForeColor = Color.Red;

                        }
                        catch (Exception ex)
                        {
                            lblMsg.Text = ex.Message;
                            lblMsg.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        lblMsg.Text = "This username has been using by another user.";
                        lblMsg.ForeColor = Color.Red;
                    }







                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match...";
                    
                }


            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All fields are required...";
            }





        }
    }
}