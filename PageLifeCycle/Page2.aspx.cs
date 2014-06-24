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
         
            DropDownList1.Items.Add("India");
            DropDownList1.Items.Add("USA");
            DropDownList1.Items.Add("Nepal");
        
    }
}