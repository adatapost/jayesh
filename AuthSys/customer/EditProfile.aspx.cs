using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Profile.FullName;
            TextBox2.Text = Profile.BirthDate.ToString("dd-MMM-yyyy");
            Image1.ImageUrl = "~/Photo/" + Profile.Photo;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.FullName = TextBox1.Text;
        Profile.BirthDate = DateTime.Parse(TextBox2.Text);
        if (FileUpload1.HasFile)
        {
            Profile.Photo = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Photo/" + FileUpload1.FileName));
            Image1.ImageUrl = "~/Photo/" + Profile.Photo;
        }
    }
}