using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grid_GridSorting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = Emp.GetEmps();
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = Emp.GetEmps();
        GridView1.DataBind();
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        var list = Emp.GetEmps();
        if (e.SortExpression == "EmpId")
        {
            GridView1.DataSource = list.OrderBy(x=>x.EmpId).ToList();
            GridView1.DataBind();
        }
        if (e.SortExpression == "EmpName")
        {
            GridView1.DataSource = list.OrderBy(x => x.EmpName).ToList();
            GridView1.DataBind();
        }
        if (e.SortExpression == "JoinDate")
        {
            GridView1.DataSource = list.OrderBy(x => x.JoinDate).ToList();
            GridView1.DataBind();
        }
        if (e.SortExpression == "MStatus")
        {
            GridView1.DataSource = list.OrderBy(x => x.MStatus).ToList();
            GridView1.DataBind();
        }
    }
}