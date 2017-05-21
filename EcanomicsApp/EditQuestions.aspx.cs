using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditQuestions : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter sda;
    DateTime dateTaken;
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        GetQuestion();
    }

    void GetQuestion()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {

                //Question
                string s = Session["QUESTIONID"].ToString();
                cmd = new SqlCommand("select * from Questions WHERE Question_ID = '" + s + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt1);

                //Answer
                cmd = new SqlCommand("select * from Answers WHERE Question_ID = '" + s + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt2);

                //Dummy Answers
                cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + s + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt3);
            }
            catch (SqlException ex)
            {
                
                    string error = ex.Message;
                
            }
            catch (Exception ex)
            {
                string errors = ex.Message;
            }
        }

        if(dt1.Rows.Count != 0)
        {
            tbQuestion.Text = dt1.Rows[0]["Question"].ToString();
            tbAnswer.Text = dt2.Rows[0]["Answer"].ToString();
            tbDummy1.Text = dt3.Rows[0]["Dummy_Answer"].ToString();
            tbDummy2.Text = dt3.Rows[1]["Dummy_Answer"].ToString();
            tbDummy3.Text = dt3.Rows[2]["Dummy_Answer"].ToString();
        }
    }

    void UpdateQuestion()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {

                //Question
                string s = Session["QUESTIONID"].ToString();
                cmd = new SqlCommand("UPDATE Questions SET Question = @qu Where Question_ID ='" + s + "'", con);
                cmd.Parameters.AddWithValue("@qu", tbQuestion.Text);
                

                //Answer
                cmd = new SqlCommand("UPDATE Answers SET Answer WHERE Question_ID = '" + s + "'", con);
                cmd.ExecuteNonQuery();

                //Dummy Answers
                cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + s + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt3);
            }
            catch (SqlException ex)
            {

                string error = ex.Message;

            }
            catch (Exception ex)
            {
                string errors = ex.Message;
            }
        }

        if (dt1.Rows.Count != 0)
        {
            tbQuestion.Text = dt1.Rows[0]["Question"].ToString();
            tbAnswer.Text = dt2.Rows[0]["Answer"].ToString();
            tbDummy1.Text = dt3.Rows[0]["Dummy_Answer"].ToString();
            tbDummy2.Text = dt3.Rows[1]["Dummy_Answer"].ToString();
            tbDummy3.Text = dt3.Rows[2]["Dummy_Answer"].ToString();
        }
    }
}