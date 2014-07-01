using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataListEx1 : System.Web.UI.Page
{
    EmpDbEntities db = new EmpDbEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataList1.DataSource = db.Depts.ToList();
            DataList1.DataBind();
        }

    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        DataList1.DataSource = db.Depts.ToList();
        DataList1.DataBind();
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        TextBox txtId =  DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1") as TextBox;
        TextBox txtName = DataList1.Items[e.Item.ItemIndex].FindControl("TextBox2") as TextBox;
      int id  = int.Parse(txtId.Text);
      var search = db.Depts.Where(x => x.DeptID == id).FirstOrDefault();
      search.DeptName = txtName.Text;
      db.SaveChanges();

      DataList1.EditItemIndex =-1;
      DataList1.DataSource = db.Depts.ToList();
      DataList1.DataBind();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label txtId = DataList1.Items[e.Item.ItemIndex].FindControl("Label1") as Label;
        int id = int.Parse(txtId.Text);

        var search = db.Depts.Where(x => x.DeptID == id).FirstOrDefault();
        if (search != null)
        {
            db.Depts.Remove(search);
            db.SaveChanges();
            DataList1.DataSource = db.Depts.ToList();
            DataList1.DataBind();
        }
    }
}