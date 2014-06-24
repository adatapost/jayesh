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
        Button b1 = new Button()
        {
            Text = "OK"
        };
        Button b2 = new Button()
        {
            Text = "Cancel"
        };

        PlaceHolder1.Controls.Add(b1);
        PlaceHolder1.Controls.Add(b2);


        for (int i = 1; i < 5; i++)
        {
            LinkButton link = new LinkButton();
            link.Text = "MyLink" + i;
            link.CommandArgument = i.ToString();
            link.CommandName = "Show " + i;
            PlaceHolder2.Controls.Add(link);
            link.Command += (sa, ea) =>
                {

                    Label1.Text = "Link button " + ea.CommandArgument + " " + ea.CommandName;
                };
        }
    }
}