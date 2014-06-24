using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<br/>2. Load");
    }


    public void page_init()
    {
        Button1.BackColor = System.Drawing.Color.Red;
        Response.Write("<br/>1. Init");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.BackColor = System.Drawing.Color.Blue;
      
    }
}