using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_JoinClass : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERID"]== null)
        {
            Response.Redirect("~/SignIn.aspx");
        }
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = GridView1.SelectedRow;

        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        
        string classId = row.Cells[1].Text;
        getScore(classId);
    }

    void getScore(string classID)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
           
            string sqlIns = "INSERT INTO Class_List (Class_ID, Student_ID) VALUES (@cID, @sID)";

            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@cID", Int32.Parse( classID));
                cmd.Parameters.AddWithValue("@sID", Int32.Parse(Session["USERID"].ToString()));
                //cmd.Parameters.AddWithValue("@sID", Int32.Parse(Session["USERID"].ToString()));
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();                
              

            }
            catch (SqlException ex)
            {
                for (int i = 0; i < ex.Errors.Count; i++)
                {
                    string error = ex.Errors[0].ToString();
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Error occured" + ex.Message;
                lblError.ForeColor = Color.Red;
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