using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageLife1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Write("Load");
    }
    public void page_init()
    {
        Trace.Write("Init");
    }
    public void page_prerender()
    {
        Trace.Write("PreRender");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Trace.Write("Button1Click");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Trace.Write("TextBox1Changed");
    }
}