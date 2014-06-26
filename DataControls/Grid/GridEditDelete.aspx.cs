using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Grid_GridEditDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindGrid();
        }
    }
    public void BindGrid()
    {
        using (SqlConnection cn = new SqlConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "select * from emp";
                cmd.Connection = cn;
                cn.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                cn.Close();
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        //Rebind the GridView
        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        //Rebind the GridView
        BindGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox no = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox name = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;

        using (SqlConnection cn = new SqlConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "update emp set empname=@p1 where empid=@p2";
                cmd.Parameters.AddWithValue("@p1", name.Text);
                cmd.Parameters.AddWithValue("@p2", no.Text);
                cmd.Connection = cn;
                cn.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                cn.Close();

            }
        }

        //Rebind the grid;
        GridView1.EditIndex = -1;
        BindGrid();
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
        //Rebind the Grid
        BindGrid();
    }
}