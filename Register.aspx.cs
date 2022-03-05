using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Project1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                try
                {
                    SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
                    conn.Open();
                    string checkuser = "select count(*) from Register1 where Email='" + TextBox9.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, conn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        Response.Write("Use already Exits");
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
                conn.Open();
                string insertQuery = "insert into Register1 (Fname,Lname,Email,Phone,Address,Password) values (@Fname,@Lname,@Email,@Phone,@Address,@Password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Fname", TextBox1.Text);
                com.Parameters.AddWithValue("@Lname", TextBox2.Text);
                com.Parameters.AddWithValue("@Email", TextBox9.Text);
                com.Parameters.AddWithValue("@Phone", TextBox10.Text);
                com.Parameters.AddWithValue("@Address", TextBox5.Text);
                com.Parameters.AddWithValue("@Password", TextBox7.Text);
                com.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration  is Successfully')", true);
                conn.Close();
                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            //clear data
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox5.Text = "";
        }
       
    }
}