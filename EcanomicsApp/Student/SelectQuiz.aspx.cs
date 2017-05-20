using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SelectQuiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void aLevelQuiz_Click(object sender, EventArgs e)
    {
        Session["QUIZ"] = 2;
        Response.Redirect("EcanomicsApp/Quiz.aspx");
    }

    protected void asLevelQuiz_Click(object sender, EventArgs e)
    {
        Session["QUIZ"] = 1;
        Response.Redirect("Quiz.aspx");
    }
}