using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;


    private string[] questionArray;
    private string[] questionDummyArray;
    private int[] numberList;
    private List<ListItem> questionsList;
    string userID;
    //private List<int> questionIdList = new List<int>();
    static int[] questionIdArray = new int[20];
    private string[] answerArray;
    static Random _random = new Random();
    int attemptID;
    int correctAnswers = 0;

    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    SqlCommand cmd;
    SqlDataAdapter sda;
    DateTime dateTaken;

    protected void Page_Load(object sender, EventArgs e)
    {
        dateTaken = DateTime.Today;
      //  string id = Session["USERID"].ToString();
        if (Session["USERID"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            string s = Session["USERID"].ToString();
        }

        if (!IsPostBack)
        {
            getRandomQuestions();
            populateQuestions();
            SubmitQuiz( Int32.Parse( Session["USERID"].ToString()));
            UpdateQuizAttempt();
            //SubmitQuiz(Int32.Parse(Session["USERID"].ToString()));
        }
    }


    //Gets 10 random digets
    private void getRandomQuestions()
    {
        for (int i = 1; i < 21; ++i)
        {
            questionIdArray[i - 1] = i;
        }

        Shuffle(questionIdArray);
    }

    //Method to insert the quesiton data
    private void populateQuestions()
    {
        if (!IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {


                //Counter for 10 quetions
                for (int i = 1; i < 11; i++)
                {
                    //Questions
                    cmd = new SqlCommand("select Question from Questions WHERE Question_ID = '" + questionIdArray[i - 1] + "' AND Quiz_ID = '" + Session["QUIZ"].ToString() + "'", con);
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt1);
                    //Dummy Answers
                    cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + questionIdArray[i - 1] + "'", con);
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt2);
                    //Answers
                    cmd = new SqlCommand("select Answer from Answers WHERE Question_ID = '" + questionIdArray[i - 1] + "'", con);
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt3);



                    if (dt1.Rows.Count != 0 && dt2.Rows.Count != 0 && dt3.Rows.Count != 0)
                    {

                        //Create dummy/answer array

                        questionDummyArray = new string[] {
                        dt2.Rows[0]["Dummy_Answer"].ToString(),
                        dt2.Rows[1]["Dummy_Answer"].ToString(),
                        dt2.Rows[2]["Dummy_Answer"].ToString(),
                        dt3.Rows[0]["Answer"].ToString()
                     };
                        //Shuffle array
                        Shuffle(questionDummyArray);

                        int count = dt1.Rows.Count;

                        //Populate question label
                        Label qLbl = Page.FindControl("question" + i) as Label;

                        int count2 = i;



                        qLbl.Text = dt1.Rows[i - 1]["Question"].ToString();


                        //Add answer
                        //int ansLoc = _random.Next(0, 3);
                        //char ansChar = tChar;
                        //ansChar += (char)ansLoc;
                        //string temp2 = "q" + i + (ansChar);
                        //Label tLbl = Page.FindControl(temp2) as Label;
                        //tLbl.Text = dt3.Rows[0]["Answer"].ToString();


                        string temp = "RadioButtonList" + i;
                        RadioButtonList rdBtList = Page.FindControl(temp) as RadioButtonList;

                        //Fill dummy answers
                        for (int f = 0; f < 4; f++)
                        {
                            if (!this.IsPostBack)
                            {
                                rdBtList.Items.Add(new ListItem(questionDummyArray[f]));
                                dt2.Clear();
                                dt3.Clear();
                            }

                        }
                    }
                    else
                    {
                        Console.WriteLine("Boy");
                    }
                }
            }
        }


    }

    static void Shuffle<T>(T[] array)
    {
        int n = array.Length;
        for (int i = 0; i < n; i++)
        {
            // NextDouble returns a random number between 0 and 1.
            // ... It is equivalent to Math.random() in Java.
            int r = i + (int)(_random.NextDouble() * (n - i));
            T t = array[r];
            array[r] = array[i];
            array[i] = t;
        }
    }

    private void SubmitQuiz(int theID)
    {
       
        using (SqlConnection con = new SqlConnection(CS))
        {
            string sqlIns = "INSERT INTO Quiz_Attempt (Quiz_ID, Student_ID, Result,Date) VALUES (@qID, @sID, @rslt, @date) SELECT SCOPE_IDENTITY()";


            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@qID", 1);
                cmd.Parameters.AddWithValue("@sID", theID);
                cmd.Parameters.AddWithValue("@rslt", 1);
                cmd.Parameters.AddWithValue("@date", dateTaken);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                attemptID = Int32.Parse(reader[0].ToString());
                Session["ATTEMPTID"] = Int32.Parse(reader[0].ToString());

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

    private void BindList()
    {
        DataSet ds = new DataSet();
        string cmdstr = "SELECT Questions.Question, Dummy.Dummy_Answer, Answers.Answer FROM ((Questions INNER JOIN Dummy on Questions.Question_ID = Dummy.Question_ID) INNER JOIN Answers ON Questions.Question_ID = Answers.Question_ID);";
        SqlDataAdapter adp = new SqlDataAdapter(cmdstr, CS);
        adp.Fill(ds);
        RadioButtonList11.DataSource = ds;
        RadioButtonList11.DataTextField = "Dummy_Answer";
        RadioButtonList11.DataValueField = "Question";
        RadioButtonList11.DataBind();
    }



    void CalculateScore()
    {
        dt1.Rows.Clear();

        for (int g = 1; g < 11; g++)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                
                    //Questions
                    dt1.Rows.Clear();
                    int qID = questionIdArray[g - 1];
                    cmd = new SqlCommand("select Answer from Answers WHERE Question_ID = '" + qID + "'", con);
                    sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt1);

                    string temp3 = "RadioButtonList" + g;
                    RadioButtonList rdBtList2 = Page.FindControl(temp3) as RadioButtonList;


                    if (dt1.Rows.Count != 0)
                    {
                        string uAnser = rdBtList2.SelectedItem.Text;
                        int rows = dt1.Rows.Count;
                        string answser = dt1.Rows[0]["Answer"].ToString();
                        string sqlIns = "INSERT INTO Question_Attempt (Quiz_Attempt_ID, Question_ID, Answer, Is_Correct) VALUES (@qaID, @qID, @ans, @correct)";
                        cmd = new SqlCommand(sqlIns, con);
                    int tempInt = Int16.Parse(Session["ATTEMPTID"].ToString());
                    if (uAnser == answser)
                        {
                            //Correct

                            try
                            {                            
                                con.Open();                                
                                cmd.Parameters.AddWithValue("@qaID", tempInt);
                                cmd.Parameters.AddWithValue("@qID", questionIdArray[g - 1]);
                                cmd.Parameters.AddWithValue("@ans", uAnser);
                                cmd.Parameters.AddWithValue("@correct", 1);
                                cmd.ExecuteNonQuery();
                                correctAnswers++;

                            }
                            catch (SqlException ex)
                            {
                                for (int e = 0; e < ex.Errors.Count; e++)
                                {
                                    string error = ex.Errors[0].ToString();
                                }
                            }
                            catch (Exception ex)
                            {

                            }

                        }
                        else
                        {
                            //INCOrrect
                            try
                            {
                          
                                con.Open();
                                cmd.Parameters.AddWithValue("@qaID", tempInt);
                                cmd.Parameters.AddWithValue("@qID", questionIdArray[g - 1]);
                                cmd.Parameters.AddWithValue("@ans", uAnser);
                                cmd.Parameters.AddWithValue("@correct", 0);
                                cmd.ExecuteNonQuery();
                                


                        }
                            catch (SqlException ex)
                            {
                                for (int e = 0; e < ex.Errors.Count; e++)
                                {
                                    string error = ex.Errors[0].ToString();
                                }
                            }
                            catch (Exception exs)
                            {
                                string h = exs.ToString();
                            }
                        }

                    }
                    else
                    {
                        Console.WriteLine("Shit mate");
                    }

                }

            }
        UpdateQuizAttempt();

    }

    void UpdateQuizAttempt()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            string sqlIns = "UPDATE Quiz_Attempt SET Result = '" + correctAnswers + "' WHERE Quiz_Attempt_ID = '" + Int32.Parse(Session["ATTEMPTID"].ToString()) + "'";


            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                con.Open();            
                
                cmd.ExecuteNonQuery();
               

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

    protected void Button1_Click(object sender, EventArgs e)
    {        
        CalculateScore();
        Response.Redirect("~/Student/QuizResults.aspx");
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

}










