using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    public void Page_init()
    {

    }
    public void page_load()
    {
        if (!Page.IsPostBack)
            TextBox1.Text = "Click on button";
        else
        {
            int n;
            int.TryParse(TextBox1.Text, out n);
            n++;
            TextBox1.Text = n.ToString();
        }
    }
}