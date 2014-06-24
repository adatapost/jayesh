using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string ctype = FileUpload1.PostedFile.ContentType;
            if (ctype == "image/png" ||
                 ctype == "image/gif" ||
                  ctype == "image/jpeg")
            {
                string vPath = "~/Photo/" + FileUpload1.FileName;
                string rPath = Server.MapPath(vPath);
                FileUpload1.SaveAs(rPath);
                Label1.Text = "File uploaded successfully";
            }
            else
            {
                Label1.Text = "Please select image file";
            }
        }
        else
        {
            Label1.Text = "Please select a file";
        }
    }
}