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
        Label2.Text = Session.Timeout.ToString();
        Label3.Text = Session.SessionID;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Label1.Text = "No Data";
        }
        else
        {
            Label1.Text = Session["name"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["name"] = "Rajesh Kuamr";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Session.Remove("name");
        }
    }
}