using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetailViewEx1 : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DetailsView1.DataSource = db.Depts.ToList();
            DetailsView1.DataBind();
        }
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DetailsView1.PageIndex = e.NewPageIndex;
        DetailsView1.DataSource = db.Depts.ToList();
        DetailsView1.DataBind();
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DetailsView1.ChangeMode(e.NewMode);
        DetailsView1.DataSource = db.Depts.ToList();
        DetailsView1.DataBind();
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        TextBox txtName = DetailsView1.FindControl("TextBox2") as TextBox;
        Dept dep = new Dept();
        dep.DeptName = txtName.Text;
        db.Depts.Add(dep);
        db.SaveChanges();

    }
}