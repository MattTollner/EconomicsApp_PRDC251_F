using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    String CS;
    SqlConnection con;
    DataTable dt;
    SqlDataAdapter sda;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {


        CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        con = new SqlConnection(CS);
        dt = new DataTable();

        try
        {
            //get student details to fill textbox 
            cmd = new SqlCommand("select * from Student where Student_ID ='" + Session["USERID"].ToString() + "'", con);
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

        if(dt.Rows.Count != 0)
        {
            if (!Page.IsPostBack)
            {
                //pre load information to textboxs
                tbUsername.Text = dt.Rows[0]["Username"].ToString();
                tbFirstName.Text = dt.Rows[0]["FirstName"].ToString();
                tbLastName.Text = dt.Rows[0]["LastName"].ToString();
                tbEmail.Text = dt.Rows[0]["Email"].ToString();
                con.Close();
            }
        }
        else
        {
            lblMsg.Text = "Error Message";
            con.Close();
        }


    }

    protected void ChangePass(Object sender, EventArgs e)
    {
        if (tbPass.Text == tbCPass.Text)
        {         
           
            if (Session["USERTYPE"].ToString() == "STUDENT")
            {
                //Get student information 
                cmd = new SqlCommand("select Username, PasswordHash from Student where Student_ID ='" + Session["USERID"].ToString() + "'", con);
                con.Open();
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);

                string origianlPasswordHash = dt.Rows[0]["PasswordHash"].ToString();

                if (HashingPassword.VerifyHash(tbCurrentPassword.Text, origianlPasswordHash) == true)
                {
                    //Udate password
                    string updatedPasswordHash = HashingPassword.ComputeHash(tbPass.Text, null);


                    cmd = new SqlCommand("Update Student set PasswordHash ='" + updatedPasswordHash + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblMsg.Text = "Password Successfully Updated";
                }
                else
                {
                    con.Close();
                    lblMsg.Text = "Incorrect Password";
                    Console.WriteLine("DF!");
                }

            }
        }
        else
        {
            con.Close();
            lblMsg.Text = "Passwords do not match";
        }
    }




    protected void updateInformation_Click(object sender, EventArgs e)
    {      

        try
        {
            //Get student information 
            con.Close();
            cmd = new SqlCommand("select * from Student where Student_ID ='" + Session["USERID"].ToString() + "'", con);
            con.Open();
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
        }
        catch (SqlException ex)
        {
            for (int i = 0; i < ex.Errors.Count; i++)
            {
                lblMsg.Text = "Error occured : " + ex.Message;
                lblMsg.ForeColor = Color.Red;
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error occured : " + ex.Message;
            lblMsg.ForeColor = Color.Red;
        }

        //If data exists
        if (dt.Rows.Count != 0)
        {
            //Check text boxes for blanks
            bool isIncomplete = this.Controls.OfType<TextBox>().Any(tb => string.IsNullOrEmpty(tb.Text));
            if (isIncomplete)
            {
                lblMsg.Text = "Please enter all required fields";
            }
            else
            {
                

                try
                {
                    using (con)
                    {
                        //Update all user fields
                        using(cmd = con.CreateCommand())
                        {
                            cmd.CommandText = "UPDATE Student SET Username = @us, FirstName = @fn, LastName = @ln, Email = @email Where Student_ID ='" + Session["USERID"].ToString() + "'";
                            cmd.Parameters.AddWithValue("@ln", tbLastName.Text);
                            cmd.Parameters.AddWithValue("@fn", tbFirstName.Text);
                            cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                            cmd.Parameters.AddWithValue("@us", tbUsername.Text);
                            Session["USERNAME"] = tbUsername.Text;
                            
                            cmd.ExecuteNonQuery();
                            con.Close();
                            lblMsg.Text = "Updated Information";
                            lblMsg.ForeColor = Color.Green;
                        }
                    }
                    
                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        lblMsg.Text = "Potentail erorr with inputs : " + ex.Message;
                        lblMsg.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }

            }
            
        }

       
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}