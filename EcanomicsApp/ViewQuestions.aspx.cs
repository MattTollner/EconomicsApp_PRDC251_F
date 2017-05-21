using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewQuestions : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    SqlCommand cmd;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the currently selected row using the SelectedRow property.
        GridViewRow row = GridView1.SelectedRow;

        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        
        Session["QUESTIONID"] = row.Cells[1].Text;
        string d = Session["QUESTIONID"].ToString();
        Response.Redirect("~/EditQuestions.aspx");
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
      
        TableCell cell = GridView1.Rows[e.AffectedRows].Cells[1];
        TableCell cell2 = GridView1.Rows[e.AffectedRows].Cells[2];
        TableCell cell3 = GridView1.Rows[e.AffectedRows].Cells[3];

        // Display the first name from the selected row.
        // In this example, the third column (index 2) contains
        // the first name.        

        int questionID = Int32.Parse(cell.Text);
        string questionID2 = cell2.Text;
        string questionID3 = (cell3.Text);

        DeleteDummy(questionID);
        DeleteAnswer(questionID);
        DeleteQuestion(questionID);
    }

    private void DeleteDummy(int questionId)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {
                
                //Dummy Answers
                con.Open();
                cmd = new SqlCommand("Delete From Dummy_Answer WHERE Question_ID = '" + questionId + "'", con);
                cmd.ExecuteNonQuery();

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

    private void DeleteAnswer(int questionId)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {

                //Dummy Answers
                con.Open();
                cmd = new SqlCommand("Delete From Answers WHERE Question_ID = '" + questionId + "'", con);
                cmd.ExecuteNonQuery();

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

    private void DeleteQuestion(int questionId)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {

                //Dummy Answers
                con.Open();
                cmd = new SqlCommand("Delete From Questions WHERE Question_ID = '" + questionId + "'", con);
                cmd.ExecuteNonQuery();

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
}