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
    protected void Page_Load(object sender, EventArgs e)
    {
        //String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        //SqlConnection con = new SqlConnection(CS);
        //DataTable dt = new DataTable();


        //SqlCommand cmd = new SqlCommand("select Quiz_Question, PasswordHash from Student where Username='" + Session["USERNAME"].ToString() + "'", con);
        //con.Open();
        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //sda.Fill(dt);
    }
 
    private bool CheckPassword(string userType)
    {
        

        

        return true;
    }

 
  


}