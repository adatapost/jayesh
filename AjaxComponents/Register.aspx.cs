using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SampleDbEntities db = new SampleDbEntities();

    protected void Button1_Click(object sender, EventArgs e)
    {
        var search = db.Logins.Where(x => x.UserEmail == TextBox1.Text).FirstOrDefault();

        if (search != null)
        {
            Label1.Text = "Email you've entered is used by other user.";
        }
        else
        {
            Login p = new Login();
            p.UserEmail = TextBox1.Text;
            p.UserPass = TextBox2.Text;
            db.Logins.Add(p);
            db.SaveChanges();
            Label1.Text = "Thanks!";

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        var search = db.Logins.Where(x => x.UserEmail == TextBox1.Text).FirstOrDefault();
        if (search != null)
        {
            Label2.Text = "Not Available";
            Button1.Enabled = false;
        }
        else
        {
            Label2.Text = "Available";
            Button1.Enabled = true;
        }
    }
}