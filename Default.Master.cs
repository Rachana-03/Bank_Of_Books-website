using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project1
{
    public partial class Default1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {/*
            ///COUNTING NO. OF BOOKS PRESENT IN CART
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label2.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label2.Text = "0";
            }*/

            if (Request.Cookies["user"] != null)
            {
                un.Text = Request.Cookies["user"].Value.ToString();
            }
/*            else if(Request.Cookies["user1"] != null)
            {
                un.Text = Request.Cookies["user1"].Value.ToString();
                un.Text = "";
            }*/
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 6);
            Image1.ImageUrl = "~/Images" + i.ToString() + ".jpeg";
        }
        //add to cart
        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

        protected void btnLogOut(object sender, EventArgs e)
        {
           
                /*                un.Text = "";
                                Session.Abandon();
                                Session.Remove("username");
                                Session.Remove("password");
                                Session["username"] = "";
                                HttpCookie cookie = new HttpCookie("user1");
                                cookie.Value = "";
                                cookie.Expires = DateTime.Now.AddHours(1);
                                Response.Cookies.Add(cookie);
                                Response.Redirect("~/Default.aspx");*/
                Session["username"] = "";
                HttpCookie cookie = new HttpCookie("user");
                cookie.Value = "";
                cookie.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(cookie);
                Response.Redirect("Default.aspx");
            }
        


    }
}