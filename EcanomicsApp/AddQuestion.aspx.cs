using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddQuestion : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
    int questionAdded;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void addQuestion()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            if (tbQuestion.Text != "" & tbAnswer.Text != "" & tbDummy1.Text != "" & tbDummy2.Text != "" & tbDummy3.Text != "")
            {

                if (SelectType.Value == "1")
                {
                    SqlCommand cmd = new SqlCommand("insert into Questions values('"

                                + 1 + "','"
                                + tbQuestion.Text + "') SELECT SCOPE_IDENTITY()", con);

                    try
                    {

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        questionAdded = Int32.Parse(reader[0].ToString());
                        reader.Close();
                        cmd.ExecuteNonQuery();

                    }
                    catch (SqlException ex)
                    {
                        for (int i = 0; i < ex.Errors.Count; i++)
                        {
                            lblMsg.Text = ex.Message;
                            lblMsg.ForeColor = Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Text = "Error occured : " + ex.Message;
                        lblMsg.ForeColor = Color.Red;
                    }



                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into Questions values('"

                                + 2 + "','"
                                + tbQuestion.Text + "') SELECT SCOPE_IDENTITY()", con);

                    try
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        questionAdded = Int32.Parse(reader[0].ToString());
                        reader.Close();
                        cmd.ExecuteNonQuery();

                    }
                    catch (SqlException ex)
                    {
                        for (int i = 0; i < ex.Errors.Count; i++)
                        {
                            lblMsg.Text = ex.Message;
                            lblMsg.ForeColor = Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMsg.Text = "Error occured : " + ex.Message;
                        lblMsg.ForeColor = Color.Red;
                    }


                }


            }




            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All fields are required...";
            }





        }
    }
    void addAnswer()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into Answers values('"

                                    + questionAdded + "','"
                                    + tbAnswer.Text + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                
                    lblMsg.Text = ex.Message;
                    lblMsg.ForeColor = Color.Red;
                
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error occured : " + ex.Message;
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
    void addDummy()
    {
        for (int i = 1; i < 4; i++)
        {
            TextBox tbDummy = Page.FindControl("tbDummy" + i) as TextBox;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("insert into Dummy values('"

                                        + questionAdded + "','"
                                        + tbDummy.Text + "')", con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                }
                catch (SqlException ex)
                {

                    lblMsg.Text = ex.Message;
                    lblMsg.ForeColor = Color.Red;

                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error occured : " + ex.Message;
                    lblMsg.ForeColor = Color.Red;
                }
            }
        }
    }

    

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        try
        {
            addQuestion();
            addAnswer();
            addDummy();
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error occured : " + ex.Message;
            lblMsg.ForeColor = Color.Red;
        }
        
    }
}
