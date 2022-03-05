using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LinkButton1.Visible = true;
            //HyperLink2.visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register1 where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'  ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (TextBox1.Text == "admin@gmail.com" && TextBox2.Text == "1234")
            {
                /*when admin login then it redirect to adming control page*/
                Session["admin"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");


                //Label1.Text = "Admin Login Successfull";
                //Label1.ForeColor = System.Drawing.Color.AliceBlue;
                            //LinkButton1.visible = false;
                            //HyperLink2.visible = true;
            }
            else if(dt.Rows.Count == 1)
            {
                Session["username"] = TextBox1.Text;
                HttpCookie cookie = new HttpCookie("user");
                cookie.Value = TextBox1.Text;
                cookie.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(cookie);
                Response.Redirect("Default.aspx");
                //LinkButton1.visible = false;
                //HyperLink2.visible = true;
                //Label1.Text = "Login is successful";
                //Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Login is failed";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

}