using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageDeptList : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = db.Depts.ToList();
            GridView1.DataBind();
        }

        GridView1.RowCancelingEdit += (sa, ea) => 
         {
             GridView1.EditIndex = -1;
             GridView1.DataSource = db.Depts.ToList();
             GridView1.DataBind();
        };
        GridView1.RowUpdating += (sa, ea) =>
        {
            Label deptNo = GridView1.Rows[ea.RowIndex].FindControl("Label1") as Label;
            TextBox deptName = GridView1.Rows[ea.RowIndex].FindControl("TextBox1") as TextBox;
            int _deptId = int.Parse(deptNo.Text);
            var search = db.Depts.Where(x => x.DeptID == _deptId).FirstOrDefault();

            if (search != null)
            {
                search.DeptName = deptName.Text;
                db.SaveChanges();
            }
            GridView1.EditIndex = -1;
            GridView1.DataSource = db.Depts.ToList();
            GridView1.DataBind();
        };
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = db.Depts.ToList();
        GridView1.DataBind();
    }
}