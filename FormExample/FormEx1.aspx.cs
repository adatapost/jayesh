using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormEx1 : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FormView1.DataSource = db.Depts.ToList();
            FormView1.DataBind();
        }
    }
    protected void FormView1_ModeChanging(object sender, FormViewModeEventArgs e)
    {
        FormView1.ChangeMode(e.NewMode);
        FormView1.DataSource = db.Depts.ToList();
        FormView1.DataBind();
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox name = FormView1.FindControl("TextBox1") as TextBox;
        Dept dept = new Dept();
        dept.DeptName = name.Text;
        db.Depts.Add(dept);
        db.SaveChanges();

        FormView1.ChangeMode(FormViewMode.ReadOnly);
        FormView1.DataSource = db.Depts.ToList();
        FormView1.DataBind();

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        FormView1.PageIndex = e.NewPageIndex;
        FormView1.DataSource = db.Depts.ToList();
        FormView1.DataBind();
    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        Label txtDeptId = FormView1.FindControl("Label3") as Label;
        TextBox txtDeptName = FormView1.FindControl("TextBox2") as TextBox;

        int id = int.Parse(txtDeptId.Text);

        var search = db.Depts.Where(x => x.DeptID == id).FirstOrDefault();

        if (search != null)
        {
            search.DeptName = txtDeptName.Text;
            db.SaveChanges();
        }

        FormView1.ChangeMode(FormViewMode.ReadOnly);
        FormView1.DataSource = db.Depts.ToList();
        FormView1.DataBind();

    }
    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {
        Label lab = FormView1.FindControl("Label1") as Label;
            var id = int.Parse(lab.Text);
            var search = db.Depts.Where(x => x.DeptID == id).FirstOrDefault();
            if (search != null)
            {
                db.Depts.Remove(search);
                db.SaveChanges();
            }
            FormView1.DataSource = db.Depts.ToList();
            FormView1.DataBind();
        
    }
}