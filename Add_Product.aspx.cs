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
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
            if (Pimg.HasFile)
            {
                //string filename = Pimg.PostedFile.FileName;
                //string filepath = "Images/" + Pimg.FileName;
                int length = Pimg.PostedFile.ContentLength;
                byte[] pic = new byte[length];


                Pimg.PostedFile.InputStream.Read(pic, 0, length);
                //Pimg.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Product1 (Pname,Pdesc,Pimg,Pquantity,Pcategory) values (@Pname,@Pdesc,@Pimg,@Pquantity,@Pcategory)",con);
                cmd.Parameters.AddWithValue("@Pname", Pname.Text);
                cmd.Parameters.AddWithValue("@Pdesc", Pdesc.Text);
                cmd.Parameters.AddWithValue("@Pimg", pic);
                cmd.Parameters.AddWithValue("@Pquantity", Pquantity.Text);
                cmd.Parameters.AddWithValue("@Pcategory", Pcategory.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Product Added Successfully ');</script>");
                Response.Redirect("Add_Product.aspx");
            }
        }
    }
}