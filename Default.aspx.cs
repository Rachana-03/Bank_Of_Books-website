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
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            ///COUNTING NO. OF BOOKS PRESENT IN CART
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label6.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label6.Text = "0";
            }


            /*Session["addproduct"] = "false";*/

            //login session
            //if (Session["username"]!=null)
            //{
            //    Label3.Text = "Logged in as "+ Session["username"].ToString();
            //    HyperLink2.Visible = false;
            //    Button1.Visible = true;
            //}
            //else
            //{
            //    Label3.Text = "Hello ! You Can Loginn Here...  ";
            //    HyperLink2.Visible = false;
            //    Button1.Visible = true;
            //}

            //

            //if(!IsPostBack)
            //{
            //    Drp_ProductCategories();
            //}

        }

        //login button
        protected void Button11_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
           // Response.Redirect("AdminHome.aspx");

           // Label3.Text="";

        }

        //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        //{
        //    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
        //    SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like '%" + TextBox1.Text + "%') or (PId like '%" + TextBox1.Text + "%')", con);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    DataList1.DataSourceID = null;
        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();
        //}

/*        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownLis1"));
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }
*/
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

        }

        ////Dispalys book categories in DropdownList
        //public void Drp_ProductCategories()
        //{
        //    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from Category1", con);
        //    ProductCategories.DataSource = cmd.ExecuteNonQuery();
        //    ProductCategories.DataTextField = "CategoryName";
        //    ProductCategories.DataTextField = "CategoryID";
        //    ProductCategories.DataBind();
        //    ProductCategories.Items.Insert(0, "Product Category");
        //    con.Close();
        //}

        ////Dispalys books based on selected Category.:
        //protected void ProductCategories_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string strQuery = " ";
        //    string selectedProduct = ProductCategories.SelectedItem.Text;
        //    if (selectedProduct == "Product Category")
        //    {
        //        strQuery = " ";
        //    }
        //    else
        //    {
        //        strQuery = "where Pcategory= '" + selectedProduct + "'  ";
        //    }
        //    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\demo.mdf;Integrated Security=True");
        //    SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 " + strQuery + " ", con);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    try
        //    {
        //        if (selectedProduct == dt.Rows[0][6].ToString())
        //        {

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('No Product Found')</script>");
        //    }
        //    DataList1.DataSourceID = null;
        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();
        //}

    }
}