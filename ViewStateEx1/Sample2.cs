using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenField1.Value  = DateTime.Now.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           DateTime start = DateTime.Parse(HiddenField1.Value);
           TimeSpan diff = DateTime.Now - start;
           Label1.Text = diff.TotalMilliseconds.ToString();
    }
}