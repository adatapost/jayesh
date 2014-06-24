using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HLink_Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       Server.Transfer("Page2.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Server.Transfer("http://www.google.com");
    }
}