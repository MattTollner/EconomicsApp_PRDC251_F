using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
 


public partial class SignUp : System.Web.UI.Page
{
    bool exists = false;
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void SignInStudent()
    {
        using (SqlConnection con2 = new SqlConnection(CS))
        {
            con2.Open();

            // create a command to check if the username exists
            using (SqlCommand cmd2 = new SqlCommand("select count(*) from [Student] where Username = @Username", con2))
            {
                cmd2.Parameters.AddWithValue("Username", tbUsername.Text);
                exists = (int)cmd2.ExecuteScalar() > 0;
            }

            // if exists, show a message error
            if (exists)
            {
                
            }

        }
    }

    void SignInTeacher()
    {
        using (SqlConnection con2 = new SqlConnection(CS))
        {
            con2.Open();

            // create a command to check if the username exists
            using (SqlCommand cmd2 = new SqlCommand("select count(*) from [Teacher] where Username = @Username", con2))
            {
                cmd2.Parameters.AddWithValue("Username", tbUsername.Text);
                exists = (int)cmd2.ExecuteScalar() > 0;
            }

            

        }
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

                    string hashedPass = HashingPassword.ComputeHash(tbPass.Text, null);

                    

                    if (SelectType.Value == "Student")
                    {
                        SignInStudent();

                        if (exists == false)
                        {
                            SqlCommand cmd = new SqlCommand("insert into Student values('"

                                    + tbUsername.Text + "','"
                                    + tbFirstName.Text + "','"
                                    + tbLastName.Text + "','"
                                    + hashedPass + "','"
                                    + tbEmail.Text + "')", con);

                            try
                            {
                                con.Open();
                                cmd.ExecuteNonQuery();
                                lblMsg.ForeColor = Color.Green;
                                lblMsg.Text = "Student Registration Complete...";
                                Response.Redirect("~/SignIn.aspx");
                            }
                            catch (SqlException ex)
                            {
                                
                                    lblMsg.Text = ex.Message;
                                    lblMsg.ForeColor = Color.Red;
                                
                            }
                            catch (Exception ex)
                            {
                                lblMsg.Text = "Error occured : " + ex.Message;
                                lblMsg.ForeColor = Color.Red;
                            }
                        } else
                        {
                            lblMsg.Text = "This username has been using by another user.";
                            lblMsg.ForeColor = Color.Red;
                        }
                            


                        
                    } else
                    {
                        //Teacher sign up
                        SignInTeacher();

                        if(exists == false)
                        {
                            SqlCommand cmd = new SqlCommand("insert into Teacher values('"

                                    + tbUsername.Text + "','"
                                    + tbFirstName.Text + "','"
                                    + tbLastName.Text + "','"
                                    + hashedPass + "','"
                                    + tbEmail.Text + "')", con);
                            try
                            {
                                con.Open();
                                cmd.ExecuteNonQuery();
                                lblMsg.ForeColor = Color.Green;
                                lblMsg.Text = "Teacher Registration Complete...";
                                Response.Redirect("~/SignIn.aspx");
                            }
                            catch (SqlException ex)
                            {
                                
                                    lblMsg.Text = ex.Message;
                                    lblMsg.ForeColor = Color.Red;
                                
                            }
                            catch (Exception ex)
                            {
                                lblMsg.Text = "Error occured : " + ex.Message;
                                lblMsg.ForeColor = Color.Red;
                            }
                        }  else
                        {
                            lblMsg.Text = "This username has been using by another user.";
                            lblMsg.ForeColor = Color.Red;
                        }                   
                        

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