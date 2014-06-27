using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageDept : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = db.Depts.ToList();
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dept dept = new Dept() { DeptName = TextBox2.Text };
        db.Depts.Add(dept);
        db.SaveChanges();
        GridView1.DataSource = db.Depts.ToList();
        GridView1.DataBind();
        Label1.Text = "Dept added";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        var deptId = int.Parse(TextBox1.Text);
        var search = db.Depts.Where(x => x.DeptID == deptId).FirstOrDefault();
        if (search != null)
        {
            TextBox2.Text = search.DeptName;
        }
        else
        {
            Label1.Text = "Dept not found";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        var deptId = int.Parse(TextBox1.Text);
        var search = db.Depts.Where(x => x.DeptID == deptId).FirstOrDefault();
        if (search != null)
        {
            search.DeptName = TextBox2.Text ;
            db.SaveChanges();
            Label1.Text = "Dept updated";
            GridView1.DataSource = db.Depts.ToList();
            GridView1.DataBind();
        }
        else
        {
            Label1.Text = "Dept not found";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        var deptId = int.Parse(TextBox1.Text);
        var search = db.Depts.Where(x => x.DeptID == deptId).FirstOrDefault();
        if (search != null)
        {
            db.Depts.Remove(search);
            db.SaveChanges();
            Label1.Text = "Dept deleted";
            GridView1.DataSource = db.Depts.ToList();
            GridView1.DataBind();
        }
        else
        {
            Label1.Text = "Dept not found";
        }
    }
}