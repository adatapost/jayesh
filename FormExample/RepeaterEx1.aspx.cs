using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RepeaterEx1 : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = db.Depts.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = db.Depts.ToList();
            Repeater2.DataBind();
        }
    }
}