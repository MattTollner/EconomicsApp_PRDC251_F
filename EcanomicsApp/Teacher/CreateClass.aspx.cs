using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_CreateClass : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Teacher_ID"] == null)
        {
            //
        }
    }

    protected void updateInformation_Click(object sender, EventArgs e)
    {
        CreateClass();
    }

    private void CreateClass()
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            string sqlIns = "INSERT INTO Class (Teacher_ID, Class_Name) VALUES (@tID, @cNme)";


            SqlCommand cmd = new SqlCommand(sqlIns, con);

            try
            {
                string cName = tbClassName.Text;
                con.Open();
                cmd.Parameters.AddWithValue("@tID", 13);
                cmd.Parameters.AddWithValue("@cNme", cName);                
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();               
                

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
}