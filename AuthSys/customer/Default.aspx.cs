using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Profile.FullName;
        if (Profile.BirthDate == DateTime.MinValue)
            Label2.Text = "Not Set";
        else
            Label2.Text = Profile.BirthDate.ToString("dd-MMM-yyyy");

        Image1.ImageUrl = "~/Photo/" + Profile.Photo;

    }
}