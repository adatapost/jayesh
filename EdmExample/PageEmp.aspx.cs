using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageEmp : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GridView1.DataSource = db.Emps.ToList();
            GridView1.DataBind();

            DropDownList1.DataSource = db.Depts.ToList();
            DropDownList1.DataTextField = "DeptName";
            DropDownList1.DataValueField = "DeptID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select", "0"));
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Emp emp = new Emp();
        emp.DeptID = int.Parse(DropDownList1.SelectedValue);
        emp.EmpName = TextBox2.Text;
        emp.JoinDate = DateTime.Parse(TextBox3.Text);

        db.Emps.Add(emp);
        db.SaveChanges();
        Label1.Text = "Emp added";

        GridView1.DataSource = db.Emps.ToList();
        GridView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);
        var s = db.Emps.Where(x => x.EmpID == id).FirstOrDefault();
        if (s != null)
        {
            TextBox2.Text = s.EmpName;
            TextBox3.Text = s.JoinDate.ToString();
            DropDownList1.SelectedValue = s.DeptID.ToString();

        }
        else
        {
            Label1.Text = "Emp not found";
        }
    }
}