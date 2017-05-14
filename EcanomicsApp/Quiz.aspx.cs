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

            for (int i = 1; i < 4; i++)
            {
                SqlCommand cmd = new SqlCommand("select Quiz_Question from Quiz_Questions WHERE Question_ID = '" + i + "'", con);
             
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt1);
                questionIdArray.Add(i);
                
            }
            
            

            if (dt1.Rows.Count != 0)
            {
                
                
                string passwordHash = dt1.Rows[0]["Quiz_Question"].ToString();
                string passwordHash2 = dt1.Rows[1]["Quiz_Question"].ToString();
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