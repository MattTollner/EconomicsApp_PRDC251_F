using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_QuizArchive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string j = Session["USERID"].ToString();
       
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = GridView1.SelectedRow;

        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        
        Session["ATTEMPTID"] = row.Cells[1].Text;
        string d = Session["ATTEMPTID"].ToString();
        Response.Redirect("~/Student/QuizResults.aspx");
    }
}