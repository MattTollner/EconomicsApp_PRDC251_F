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
        Session["QUESTIONID"] = row.Cells[3].Text;
        string d = Session["QUESTIONID"].ToString();
        Response.Redirect("~/Admin/EditQuestions.aspx");
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {       
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        DeleteDummy(Int32.Parse(id));
        DeleteAnswer(Int32.Parse(id));
        DeleteQuestion(Int32.Parse(id));
    }



    private void DeleteDummy(int questionId)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {
                
                //Dummy Answers
                con.Open();
                cmd = new SqlCommand("Delete From Dummy WHERE Question_ID = '" + questionId + "'", con);
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