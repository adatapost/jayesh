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

    }
    protected void no_TextChanged(object sender, EventArgs e)
    {
        int n;
        int.TryParse(no.Text, out n);
        n = n * n;
       Label1.Text = n.ToString();
    }
}