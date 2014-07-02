using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Create HttpCookie object 
        HttpCookie c1 = new HttpCookie("name", "rajesh");

        //Persistent cookie

        c1.Expires = DateTime.Now.AddDays(10);

        //Send the cookie object to web-browser
        Response.Cookies.Add(c1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["name"] == null)
        {
            Label1.Text = "No Cookie";
        }
        else
        {
            Label1.Text = Request.Cookies["name"].Value;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpCookie c1 = Request.Cookies["name"];
        if (c1 != null)
        {
            c1.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(c1);
        }
    }
}