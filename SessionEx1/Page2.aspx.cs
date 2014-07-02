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
        Application.Lock();
        if (Application["counter"] == null)
        {
            Application["counter"] = 0;
        }
        int n = int.Parse(Application["counter"].ToString());
        n++;
        Application["counter"] = n;
        Application.UnLock();

        Label1.Text = n.ToString();
    }
}