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
    string userID;
    //private List<int> questionIdList = new List<int>();
    private int[] questionIdArray = new int[20];
    private string[] answerArray;
    static Random _random = new Random();



    protected void Page_Load(object sender, EventArgs e)
    {
        //Random 10 digits
       // userID =  Session["USERID"].ToString();
       //SubmitQuiz(5);
        getRandomQuestions();
        populateQuestions();
        
    }

    
    //Gets 10 random digets
    private void getRandomQuestions()
    {
        for (int i = 0; i < 20; ++i)
        {
            questionIdArray[i] = i;
        }

        Shuffle(questionIdArray);


    }
    
    //Method to insert the quesiton data
    private void populateQuestions()
    {
        
        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            SqlCommand cmd;
            SqlDataAdapter sda;

            //Counter for 10 quetions 
            for (int i = 1; i < 11; i++)
            {
                //Questions
                cmd = new SqlCommand("select Question from Questions WHERE Question_ID = '" + questionIdArray[i] + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt1);              
                //Dummy Answers
                cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + questionIdArray[i] + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt2);
                //Answers
                cmd = new SqlCommand("select Answer from Answers WHERE Question_ID = '" + questionIdArray[i] + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt3);

                

                if (dt1.Rows.Count != 0 && dt2.Rows.Count != 0 && dt3.Rows.Count != 0)
                {
                    //Populate questions
                    char tChar = 'a';
                   
                    //Create dummy/answer array    
                   
                    questionDummyArray = new string[] {                        
                        dt2.Rows[0]["Dummy_Answer"].ToString(),
                        dt2.Rows[1]["Dummy_Answer"].ToString(),
                        dt2.Rows[2]["Dummy_Answer"].ToString(),
                        dt3.Rows[0]["Answer"].ToString()
                    };                    
                    Shuffle(questionDummyArray);

                    //Populate question label 
                    Label qLbl = Page.FindControl("question" + i) as Label;
                    qLbl.Text = dt1.Rows[i-1]["Question"].ToString();
                    

                    //Fill dummy answers
                    for (int f = 1; f < 5; f++)
                    {
                        string temp = "q" + i + tChar;
                        Label tLbl = Page.FindControl(temp) as Label;
                        Console.WriteLine(f - 1);
                        Console.WriteLine(questionDummyArray[0]);
                        tLbl.Text = questionDummyArray[f - 1];
                        tChar++;
                        dt2.Clear();
                        dt3.Clear();
                    }                   
                } else
                {
                    //
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

    static void SubmitQuiz(int theID)
    {
        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        
        using (SqlConnection con = new SqlConnection(CS))
        {
           
            
            SqlCommand cmd = new SqlCommand("insert into Quiz_Attempt values('" + 1 + "','" + 23 + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
               
            }
            catch (SqlException ex)
            {
                for (int i = 0; i < ex.Errors.Count; i++)
                {
                
                }
            }
            catch (Exception ex)
            {
         
            }
        }
           
    } 



        
    
        
}





  


 
  