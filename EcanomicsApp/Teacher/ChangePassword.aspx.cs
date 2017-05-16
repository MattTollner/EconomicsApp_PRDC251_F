using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    private bool CheckPassword(string userType)
    {
        

        

        return true;
    }


    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }



    protected void btnChangePass_Click(object sender, EventArgs e)
    {
        if (tbPass.Text == tbCPass.Text)
        {
            String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            DataTable dt = new DataTable();

            if (Session["USERTYPE"].ToString() == "STUDENT")
            {
                SqlCommand cmd = new SqlCommand("select Username, PasswordHash from Student where Username='" + Session["USERNAME"].ToString() + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
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
                   
                    lblMsg.Text = "Incorrect Password";

                }

            }
        }
        else
        {
            lblMsg.Text = "Passwords do not match";
        }       
        
    }
}