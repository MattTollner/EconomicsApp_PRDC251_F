using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class UpdateTeacherInformation : System.Web.UI.Page
{
    String cs;
    SqlConnection con;
    DataTable dt;
    SqlCommand cmd;
    SqlDataAdapter sda;

    protected void Page_Load(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        con = new SqlConnection(cs);
        dt = new DataTable();
        String session = Session["USERID"].ToString();

        try
        {
            //Getting the teachers information from the database and filling it into the correct text boxes.
            cmd = new SqlCommand("select * from Teacher where Teacher_ID ='" +
                Int32.Parse(session) + "'", con);
            con.Open();
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
        }
        catch (SqlException ex) //exception handle used to make sure the person is connected to the server.
        {
            for (int i = 0; i < ex.Errors.Count; i++)
            {
                lblMsg.Text = "SQL Error : ensure connection to server.";
                lblMsg.ForeColor = Color.Red; //Change this Marcus
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error occured : " + ex.Message;
            lblMsg.ForeColor = Color.Red;
        }

        if (dt.Rows.Count != 0)
        {
            if (!Page.IsPostBack)
            {
                //pre load informaion to the web form
                txtUsername.Text = dt.Rows[0]["Username"].ToString();
                txtFirstName.Text = dt.Rows[0]["FirstName"].ToString();
                txtLastName.Text = dt.Rows[0]["LastName"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                con.Close();
            }
        }
        else
        {
            lblMsg.Text = "Error Message";
            con.Close();
        }    
    }

    protected void updateInfo_Click(object sender, EventArgs e)
    {
        try
        {
            con.Close();
            cmd = new SqlCommand("select * from Teachers where Teachers_ID ='"
                + Session["TEACHERID"].ToString() + "'", con);
            con.Open();
            sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
        }
        catch (SqlException ex)
        {
            for (int i = 0; i < ex.Errors.Count; i++)
            {
                lblMsg.Text = "Error occured" + ex.Message;
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
            bool isEmpty = this.Controls.OfType<TextBox>().Any(txt => string.IsNullOrEmpty(txt.Text));
            if (isEmpty)
            {
                lblMsg.Text = "Please enter all required fields";
            }
            else
            {
                try
                {
                    using (con)
                    {

                        using (cmd = con.CreateCommand())
                        {
                            cmd.CommandText = "UPDATE Teacher SET Username = @us, FirstName = @fn, LastName = @ln, Email = @email Where Teacher_ID = '"
                                + Session["TEACHERID"].ToString() + "'";
                            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@us", txtUsername.Text);
                            cmd.Parameters.AddWithValue("@fn", txtFirstName.Text);
                            cmd.Parameters.AddWithValue("@ls", txtLastName.Text);
                            Session["USERNAME"] = txtUsername.Text;

                            cmd.ExecuteNonQuery();
                            con.Close();
                            lblMsg.Text = "Updated Information";
                            lblMsg.ForeColor = Color.Green;
                        }
                    }
                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.ErrorCode; i++)
                    {
                        lblMsg.Text = "Potential error with inputs : " + ex.Message;
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
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Clicked");
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}