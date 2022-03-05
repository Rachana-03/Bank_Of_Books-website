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
    public partial class Donate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
                conn.Open();
                string insertQuery = "insert into DonationList (Booksname,Quantity,Fname,Lname,Email,Phone,Address) values (@Booksname,@Quantity,@Fname,@Lname,@Email,@Phone,@Address)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Booksname", txtbook.Text);
                com.Parameters.AddWithValue("@Quantity", txtQuantity.Text);
                com.Parameters.AddWithValue("@Fname", txtFname.Text);
                com.Parameters.AddWithValue("@Lname", txtLname.Text);
                com.Parameters.AddWithValue("@Email", txtemail.Text);
                com.Parameters.AddWithValue("@Phone", txtemail.Text);
                com.Parameters.AddWithValue("@Address", txtadd.Text);
                com.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Donation Form is Successfully Submitted ,Sonn we contact you.')", true);
                conn.Close();
                Response.Redirect("Donate.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            //clear data
             txtbook.Text="";
             txtQuantity.Text="";
             txtFname.Text="";
             txtLname.Text="";
             txtemail.Text="";
             txtemail.Text="";
             txtadd.Text="";

        }
    }
    }
