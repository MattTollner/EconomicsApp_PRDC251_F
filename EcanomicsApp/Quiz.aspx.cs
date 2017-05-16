using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    private string[,] questionArray;
    private List<int> questionIdArray;
    private string[] answerArray;


    protected void Page_Load(object sender, EventArgs e)
    {


        getQuestions();
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

            for (int i = 1; i < 4; i++)
            {
                cmd = new SqlCommand("select Question from Questions WHERE Question_ID = '" + i + "'", con);             
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt1);
                //questionIdArray.Add(i);

                cmd = new SqlCommand("select * from Dummy WHERE Question_ID = '" + i + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt2);

                cmd = new SqlCommand("select * from Answers WHERE Question_ID = '" + i + "'", con);
                sda = new SqlDataAdapter(cmd);
                sda.Fill(dt3);

                string t = "question" + i.ToString();

                if (dt1.Rows.Count != 0)
                {
                    this.Controls.Add(new LiteralControl("<div style='color: gray; height: 20px; width: 300px;'>I was created using Code Behind</div>"));
                    question2.Text = dt1.Rows[0]["Question"].ToString();
                    q2a.Text = dt2.Rows[0]["Dummy_Answer"].ToString();
                    q2b.Text = dt2.Rows[1]["Dummy_Answer"].ToString();
                    q2c.Text = dt2.Rows[2]["Dummy_Answer"].ToString();
                    q2d.Text = dt3.Rows[0]["Answer"].ToString();
                }

            }



            if (dt1.Rows.Count != 0)
            {
                question2.Text = dt1.Rows[0]["Question"].ToString();
                q2a.Text = dt2.Rows[0]["Dummy_Answer"].ToString();
                q2b.Text = dt2.Rows[1]["Dummy_Answer"].ToString();
                q2c.Text = dt2.Rows[2]["Dummy_Answer"].ToString();
                q2d.Text = dt3.Rows[0]["Answer"].ToString();



                string passwordHash = dt1.Rows[0]["Question"].ToString();
                string passwordHash2 = dt1.Rows[1]["Question"].ToString();
                string passwordHash3 = dt2.Rows[0]["Dummy_Answer"].ToString();
                string passwordHash42 = dt2.Rows[1]["Dummy_Answer"].ToString();
               
            }
            else
            {
                //
            }


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