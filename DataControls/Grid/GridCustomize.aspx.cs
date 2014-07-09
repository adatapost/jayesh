using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grid_GridCustomize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = Emp.GetEmps();
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = Emp.GetEmps();
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = Emp.GetEmps();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        TextBox name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox joinDate = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        CheckBox mstat = GridView1.Rows[e.RowIndex].FindControl("CheckBox1") as CheckBox;
        Label no = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        FileUpload file = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;



        using (SqlConnection cn = new SqlConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "update emp set empname=@p1,joindate=@p3,mstatus=@p4,photo=@p5 where empid=@p2";
                cmd.Parameters.AddWithValue("@p1", name.Text);
                cmd.Parameters.AddWithValue("@p3", joinDate.Text);
                cmd.Parameters.AddWithValue("@p4", mstat.Checked);
                cmd.Parameters.AddWithValue("@p5", file.FileName);
                cmd.Parameters.AddWithValue("@p2", no.Text);
                cmd.Connection = cn;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                file.SaveAs(Server.MapPath("~/Photo/" + file.FileName));

            }
        }
        GridView1.EditIndex = -1;
        GridView1.DataSource = Emp.GetEmps();
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex][0].ToString();
        using (SqlConnection cn = new SqlConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "delete from  emp where empid=@p1";

                cmd.Parameters.AddWithValue("@p1", id);
                cmd.Connection = cn;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();

            }
        }
        GridView1.DataSource = Emp.GetEmps();
        GridView1.DataBind();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (!txtPhoto.HasFile)
        {
            lblMessage.Text = "Please select a photo";
            return;
        }
        string ctype = txtPhoto.PostedFile.ContentType;
        if (ctype == "image/png" ||
             ctype == "image/gif" ||
              ctype == "image/jpeg")
        {
            string vPath = "~/Photo/" + txtPhoto.FileName;
            string rPath = Server.MapPath(vPath);
            txtPhoto.SaveAs(rPath);
            using (SqlConnection cn = new SqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cn.ConnectionString = Db.CnStr;
                    cmd.Connection = cn;
                    cmd.CommandText = "insert into emp (EmpName,JoinDate,MStatus,Photo,site) values (@p1,@p2,@p3,@p4,@p5)";
                    cmd.Parameters.AddWithValue("@p1", txtEmpName.Text);
                    cmd.Parameters.AddWithValue("@p2", txtJoinDate.Text);
                    cmd.Parameters.AddWithValue("@p3", txtMStatus.SelectedValue == "Marrid");
                    cmd.Parameters.AddWithValue("@p4", txtPhoto.FileName);
                    cmd.Parameters.AddWithValue("@p5", txtSite.Text);
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();

                }
            }
            Image2.ImageUrl = "~/photo/" + txtPhoto.FileName;
            lblMessage.Text = "Employee record added successfully";
            txtEmpName.Text = "";
            txtJoinDate.Text = "";
            txtMStatus.SelectedIndex = -1;
            txtEmpName.Focus();
            GridView1.DataSource = Emp.GetEmps();
            GridView1.DataBind();
        }
        else
        {
            lblMessage.Text = "Please select image file";
        }

    }
}