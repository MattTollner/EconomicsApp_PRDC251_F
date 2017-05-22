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

public partial class EditQuestions : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter sda;
    DateTime dateTaken;
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    static int[] dummyIDs;
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetQuestion();
        }
        
        
        

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

                lblMsg.Text = ex.Message;
                lblMsg.ForeColor = Color.Red;

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
                lblMsg.ForeColor = Color.Red;
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

        if (dt3.Rows.Count != 0)
        {
            dummyIDs = new int[] {
                        Int16.Parse( dt3.Rows[0]["Dummy_ID"].ToString()),
                        Int16.Parse( dt3.Rows[1]["Dummy_ID"].ToString()),
                        Int16.Parse( dt3.Rows[2]["Dummy_ID"].ToString())
                     };
        }
    }

    void UpdateQuestion()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {

                //Question
                con.Open();
                string s = Session["QUESTIONID"].ToString();
                cmd = new SqlCommand("UPDATE Questions SET Question = @qu Where Question_ID ='" + s + "'", con);
                cmd.Parameters.AddWithValue("@qu", tbQuestion.Text);
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

    void UpdateAnswer()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            try
            {
                //Answer
                con.Open();
                cmd = new SqlCommand("UPDATE Answers SET Answer = @ans WHERE Question_ID = '" + Session["QUESTIONID"].ToString() + "'", con);
                cmd.Parameters.AddWithValue("@ans", tbQuestion.Text);
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

    void UpdateDummy()
    {
        for (int i = 1; i < 3; i++)
        {
            
            using (SqlConnection con = new SqlConnection(CS))
            {

                try
                {
                    TextBox qLbl = Page.FindControl("tbDummy" + i) as TextBox;
                    string hello = qLbl.Text;
                    //Dummy Answers
                    con.Open();
                    cmd = new SqlCommand("UPDATE Dummy SET Dummy_Answer = '" + qLbl.Text + "' WHERE Dummy_ID = '" + dummyIDs[i-1] + "'", con);
                    cmd.ExecuteNonQuery();

                }
                catch (SqlException ex)
                {

                    lblMsg.Text =  ex.Message;
                    lblMsg.ForeColor = Color.Red;

                }
                catch (Exception ex)
                {
                    lblMsg.Text = ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }
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

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if(tbAnswer.Text != "" && tbDummy1.Text != "" && tbDummy2.Text != "" && tbDummy3.Text != "" && tbQuestion.Text != "")
        {
            UpdateQuestion();
            UpdateAnswer();
            UpdateDummy();
        }
        else
        {
            lblMsg.Text = "Please enter all fields";
            lblMsg.ForeColor = Color.Red;
        }
        
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ViewQuestions.aspx");
    }
}