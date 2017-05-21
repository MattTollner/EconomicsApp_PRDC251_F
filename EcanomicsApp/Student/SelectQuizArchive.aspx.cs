using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_SelectQuizArchive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void asLevelQuiz_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/QuizArchive.aspx");
    }

    protected void aLevelQuiz_Click(object sender, EventArgs e)
    {

    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}