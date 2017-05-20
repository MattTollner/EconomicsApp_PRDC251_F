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

public partial class QuizResults : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    int[] questionIdArray = new int[10];
    string[] answerArray = new string[10];
    string[] questionArray = new string[10];
    string[] uAnswerArray = new string[10];

    protected void Page_Load(object sender, EventArgs e)
    {
        getQuestionIDs();
        getRealAnswers();
        getQuestions();
        populateResults();       

    }

    void getQuestionIDs()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            SqlCommand cmd;
            SqlDataAdapter sda;

            try
            {
                //SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                //cmd = new SqlCommand("select Questions.Question, Answers.Answer, Question_Attempt.Answer, Question_Attempt.Is_Correct from ((Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Questions.Question_ID) INNER JOIN Answers O Questions where Quiz_Attempt_ID='" + 103 + "'", con);
                //cmd = new SqlCommand("select Question_Attempt.Answer, Answers.Answer FROM (Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Answers.Question_ID) Where Quiz_Attempt_ID ='" + 103 + "'", con);
                cmd = new SqlCommand("select * FROM Question_Attempt Where Quiz_Attempt_ID ='" + 103 + "'", con);
                con.Open();
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
            }
            catch (SqlException ex)
            {
                for (int i = 0; i < ex.Errors.Count; i++)
                {
                    lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error occured : " + ex.Message;
                lblMsg.ForeColor = Color.Red;
            }

            if (dt.Rows.Count != 0)
            {
                int d = dt.Rows.Count;
                int dts = dt.Columns.Count;
                string temp = "";
                for (int i = 1; i < 11; i++)
                {
                                        
                    questionIdArray[i - 1] = Int32.Parse( dt.Rows[i - 1]["Question_ID"].ToString());
                    uAnswerArray[i - 1] = dt.Rows[i - 1]["Answer"].ToString();
                }
            }

        }
    }

    void getRealAnswers()
    {
        for (int i = 0; i < 10; i++)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                DataTable dt = new DataTable();
                DataTable dt2 = new DataTable();
                SqlCommand cmd;
                SqlDataAdapter sda;

            
                
                try
                {
                    //SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                    //cmd = new SqlCommand("select Questions.Question, Answers.Answer, Question_Attempt.Answer, Question_Attempt.Is_Correct from ((Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Questions.Question_ID) INNER JOIN Answers O Questions where Quiz_Attempt_ID='" + 103 + "'", con);
                    //cmd = new SqlCommand("select Question_Attempt.Answer, Answers.Answer FROM (Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Answers.Question_ID) Where Quiz_Attempt_ID ='" + 103 + "'", con);
                    cmd = new SqlCommand("select Answer From Answers Where Question_ID='" + questionIdArray[i] + "'", con);
                    con.Open();
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                }
                catch (SqlException ex)
                {
                    for (int g = 0; g < ex.Errors.Count; g++)
                    {
                        lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                        lblMsg.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }

                if (dt.Rows.Count != 0)
                {
                    answerArray[i] = dt.Rows[0]["Answer"].ToString();
                }
            }
        }
    }

    void getQuestions()
    {
        for (int i = 0; i < 10; i++)
        {



            using (SqlConnection con = new SqlConnection(CS))
            {
                DataTable dt = new DataTable();
                DataTable dt2 = new DataTable();
                SqlCommand cmd;
                SqlDataAdapter sda;

                try
                {
                    //SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                    //cmd = new SqlCommand("select Questions.Question, Answers.Answer, Question_Attempt.Answer, Question_Attempt.Is_Correct from ((Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Questions.Question_ID) INNER JOIN Answers O Questions where Quiz_Attempt_ID='" + 103 + "'", con);
                    //cmd = new SqlCommand("select Question_Attempt.Answer, Answers.Answer FROM (Question_Attempt INNER JOIN ON Question_Attempt.Question_ID = Answers.Question_ID) Where Quiz_Attempt_ID ='" + 103 + "'", con);
                    cmd = new SqlCommand("select Question FROM Questions Where Question_ID ='" + questionIdArray[i] + "'", con);
                    con.Open();
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                }
                catch (SqlException ex)
                {
                    for (int g = 0; g < ex.Errors.Count; i++)
                    {
                        lblMsg.Text = "SQL Error : ensure connection to plymouth server";
                        lblMsg.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }

                if (dt.Rows.Count != 0)
                {
                    int d = dt.Rows.Count;
                    string temp = "";
                   
                        
                        questionArray[i] = dt.Rows[0]["Question"].ToString();                      
                    
                }

            }
        }
    }

    void populateResults()
    {
        string temp = "";
        for (int i = 1; i < 11; i++)
        {
            temp = "quesiton" + i;
            Label curLbl = Page.FindControl(temp) as Label;
            curLbl.Text = "<b> Question " + i + "</b> : <br />" + questionArray[i - 1];

            temp = "uAnswer" + i;
            curLbl = Page.FindControl(temp) as Label;
            curLbl.Text = "Your Answer : " + uAnswerArray[i - 1];

            temp = "answer" + i;
            curLbl = Page.FindControl(temp) as Label;
            curLbl.Text = "Correct Answer : " + answerArray[i - 1];


         }
    }

}