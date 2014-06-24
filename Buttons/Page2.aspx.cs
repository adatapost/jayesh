using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Click += test;
        Button1.Click+=Button1_Click;

        Button1.Click += (sa, ea) => 
        {

        };
    }

    void test(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void hello(object sender, CommandEventArgs e)
    {

    }
    protected void myclick(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}