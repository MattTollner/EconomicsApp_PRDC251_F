using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_QuizArchive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select Result, Date from Quiz_Attempt Where Student_ID = '" + 20 + "'", con);

            try
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);               
                SqlDataSource1.DataBind();
            }
            catch (Exception ex)
            {
                //...
            }
            
        }
    }
}