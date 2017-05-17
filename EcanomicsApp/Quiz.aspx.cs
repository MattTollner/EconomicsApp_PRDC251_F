using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    private string[] questionArray;
    private string[] questionDummyArray;

    private List<int> questionIdArray;
    private string[] answerArray;
    static Random _random = new Random();



    protected void Page_Load(object sender, EventArgs e)
    {


        getQuestions();
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

    private void getQuestions()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            SqlCommand cmd;
            SqlDataAdapter sda;

            for (int i = 1; i < 6; i++)
            {
                cmd = new SqlCommand("select Question from Questions WHERE Question_ID = '" + i + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt1);
                //questionIdArray.Add(i);

                cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + i + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt2);

                cmd = new SqlCommand("select Answer from Answers WHERE Question_ID = '" + i + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt3);



                if (dt1.Rows.Count != 0)
                {

                    char tChar = 'a';
                   
                    //Create array
                   // questionArray[i - 1] = dt1.Rows[0]["Question"].ToString();
                   
                    questionDummyArray = new string[] {                        
                        dt2.Rows[0]["Dummy_Answer"].ToString(),
                        dt2.Rows[1]["Dummy_Answer"].ToString(),
                        dt2.Rows[2]["Dummy_Answer"].ToString(),
                        dt3.Rows[0]["Answer"].ToString()
                    };
                    Shuffle(questionDummyArray);



                    //Populate question
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
                   
                }


            }
            //for (int i = 0; i < dt2.Rows.Count i++)
            //{
            //    questionArray[i] = question2.Text;
            //}
            //q2a.Text = dt2.Rows[0]["Dummy_Answer"].ToString();
            //q2b.Text = dt2.Rows[1]["Dummy_Answer"].ToString();
            //q2c.Text = dt2.Rows[2]["Dummy_Answer"].ToString();
            //q2d.Text = dt3.Rows[0]["Answer"].ToString();
        }

    }

    private DataSet GetData()
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt1 = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from Quiz_Questions where Quiz_ID ='" + "1" + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
}





  


 
  