using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeptSeachEx : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        var result = db.Depts.Where(x => x.DeptName.StartsWith(TextBox1.Text)).ToList();
        GridView1.DataSource = result;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = int.Parse(GridView1.SelectedValue.ToString());
        var search = db.Depts.Where(x => x.DeptID == id).FirstOrDefault();
        TextBox2.Text = search.DeptID.ToString();
        TextBox3.Text = search.DeptName;

    }
}