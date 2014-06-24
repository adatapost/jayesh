using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Grid_Simple : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
}