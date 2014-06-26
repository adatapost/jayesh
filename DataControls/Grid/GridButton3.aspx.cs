using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grid_GridButton3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = Emp.GetEmps();
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;

        string str = GridView1.DataKeys[ index][0].ToString();
        str = str +  "  " +  GridView1.DataKeys[index][1].ToString();
        Label1.Text = str;
    }
}