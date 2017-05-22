using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_CreateClass : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERID"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void updateInformation_Click(object sender, EventArgs e)
    {
        CreateClass();
    }

    private void CreateClass()
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            string sqlIns = "INSERT INTO Class (Teacher_ID, Class_Name) VALUES (@tID, @cNme)";


            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                string cName = tbClassName.Text;
                con.Open();
                cmd.Parameters.AddWithValue("@tID", Int32.Parse(Session["USERID"].ToString()));
                cmd.Parameters.AddWithValue("@cNme", cName);                
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                tbClassName.Text = "";                
                lblMsg.Text = "Class Created";
                lblMsg.ForeColor = Color.Green;
                

                

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
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
       
        Session["USERNAME"] = null;
        Session["USERID"] = null;
        Response.Redirect("~/SignIn.aspx");
    }
}