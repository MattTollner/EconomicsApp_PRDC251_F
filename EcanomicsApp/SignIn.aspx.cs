using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["XserveConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            DataTable dt = new DataTable();

            if (SelectType.Value == "Student")
            {
                SqlCommand cmd = new SqlCommand("select * from Student where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);                
                sda.Fill(dt);
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select * from Teacher where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);                
                sda.Fill(dt);
            }


            if (dt.Rows.Count != 0)
            {
                if (chkBxRemember.Checked)
                {
                    
                    Response.Cookies["UNAME"].Value = UserName.Text;
                    Response.Cookies["PWD"].Value = Password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);




                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }

                if(SelectType.Value == "Student")
                {
                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/home.aspx");
                } else
                {
                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/home.aspx");
                }

           

                //string uType;
                //uType = dt.Rows[0][5].ToString().Trim();

                //switch (uType)
                //{
                //    case "U":
                //        Session["USERNAME"] = UserName.Text;
                //        Response.Redirect("~/Userhome.aspx");
                //        break;
                //    case "A":
                //        Session["USERNAME"] = UserName.Text;
                //        Response.Redirect("~/Adminhome.aspx");
                //        break;
                //    default:
                //        break;
                //}




            }
            else
            {
                lblError.ForeColor = Color.Red;
                lblError.Text = "Invalid username or password";
            }

        }
    }
}