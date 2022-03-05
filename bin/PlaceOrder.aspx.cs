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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand ("insert into PlaceOrderDetails" + "(Fname,Lname,PinCode,Phone,Address) values (@Fname,@Lname,@PinCode,@Phone,@Address) ");
            cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@PinCode", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Order Made Successful');</script>");
            Session["address"] = TextBox4.Text;
            Response.Redirect("Invoice_pdf.aspx");
        }
    }
}