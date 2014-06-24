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
        Label1.Text = Server.MapPath("~");

        string virtualPath = "~/web.config";
        string realPath = Server.MapPath(virtualPath);
        Label2.Text = realPath;

        var vFile = "~/Sample/Hello.txt";
        var rFile = Server.MapPath(vFile);

        System.IO.File.AppendAllText(rFile, "Hello World");


    }
}