using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void TestPassword()
    {
        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt1 = new DataTable();
            SqlCommand cmd = new SqlCommand("select Username, PasswordHash, SaltKey from Student where Username='" + UserName.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt1);

            string passwordHash = dt1.Rows[0]["PasswordHash"].ToString();
            string saltKey = dt1.Rows[0]["SaltKey"].ToString();
            string salt = dt1.Rows[0]["SaltKey"].ToString();
            string plainTextPass = Password.Text;


        }        
        
        
        
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {

        //TestPassword();

        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        //using block ensures connection is closed when not used. No need for closing it
        using (SqlConnection con = new SqlConnection(CS))
        {         
            DataTable dt = new DataTable();
            SqlCommand cmd;
            SqlDataAdapter sda;

            //Student login
            if (SelectType.Value == "Student")
            {
                

                try
                {
                    //SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                    cmd = new SqlCommand("select Student_ID, Username, PasswordHash from Student where Username='" + UserName.Text + "'", con);
                    con.Open();
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                        lblMsg.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }
                string abc;
                string abcd = "";

                if (dt.Rows.Count != 0)
                {
                    abc = dt.Rows[0]["Username"].ToString();
                    abcd = dt.Rows[0]["PasswordHash"].ToString();
                } else
                {
                    lblMsg.Text = "Wrong username";
                }
                

                Boolean isCorrect = HashingPassword.VerifyHash(Password.Text, abcd);

                if(isCorrect == true)
                {
                    try
                    {
                        con.Close();
                        cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "'", con);
                        con.Open();
                        sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                    }
                    catch (SqlException ex)
                    {
                        for (int i = 0; i < ex.Errors.Count; i++)
                        {
                            lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                            lblMsg.ForeColor = Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Text = "Error occured : " + ex.Message;
                        lblMsg.ForeColor = Color.Red;
                    }

                } else
                {
                    dt.Clear();
                }             
                
              

            }
            else
            {
                //TEACHER SIGN IN
                try
                {
                    //SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                    cmd = new SqlCommand("select Teacher_ID, Username, PasswordHash from Teacher where Username='" + UserName.Text + "'", con);
                    con.Open();
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                        lblMsg.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }
                string abc;
                string abcd = "";

                if (dt.Rows.Count != 0)
                {
                    abc = dt.Rows[0]["Username"].ToString();
                    abcd = dt.Rows[0]["PasswordHash"].ToString();
                }
                else
                {
                    lblMsg.Text = "Wrong username";
                }


                Boolean isCorrect = HashingPassword.VerifyHash(Password.Text, abcd);

                if (isCorrect == true)
                {
                    try
                    {
                        con.Close();
                        cmd = new SqlCommand("select * from Teacher where Username='" + UserName.Text + "'", con);
                        con.Open();
                        sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                    }
                    catch (SqlException ex)
                    {
                        for (int i = 0; i < ex.Errors.Count; i++)
                        {
                            lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                            lblMsg.ForeColor = Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Text = "Error occured : " + ex.Message;
                        lblMsg.ForeColor = Color.Red;
                    }

                }
                else
                {
                    dt.Clear();
                }
            }


            if (dt.Rows.Count != 0)
            {
                if (chkBxRemember.Checked)
                {
                    
                    Response.Cookies["UNAME"].Value = UserName.Text;
                    Response.Cookies["PWD"].Value = Password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);




                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }


                //WHICH PAGE REDIRECT
                if(SelectType.Value == "Student")
                {
                    //Go to student page
                    Session["USERNAME"] = UserName.Text;
                    Session["USERTYPE"] = "STUDENT";
                    Session["USERID"] = dt.Rows[0]["Student_ID"].ToString();
                    Response.Redirect("~/Student/home.aspx");
                } else
                {
                    //go to teacehr page
                    Session["USERNAME"] = UserName.Text;
                    Session["USERTYPE"] = "TEACHER";
                    Session["USERID"] = dt.Rows[0]["Teacher_ID"].ToString();
                    Response.Redirect("~/Teacher/TeacherHome.aspx");
                }         
                

            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Invalid username or password";
            }

        }
    }
   
}

   

    
