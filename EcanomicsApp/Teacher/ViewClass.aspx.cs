using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_ViewClass : System.Web.UI.Page
{
     String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["CLASSID"] == null)
        {
            //
        }
    }

    void DeleteUser()
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = GridView1.SelectedRow;

        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        

        string studentID = row.Cells[2].Text;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string sqlIns = "DELETE FROM Class_List WHERE Student_ID = '" + Int32.Parse(studentID) + "'";


            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Teacher/ViewClass.aspx");

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

            }


        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = GridView1.SelectedRow;
        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        
        string studentID = row.Cells[2].Text;
        Session["USERID"] = studentID;
        Response.Redirect("~/Teacher/ViewStudentTests.aspx");
    }
}