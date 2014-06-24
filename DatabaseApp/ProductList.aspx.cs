using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ProductList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cn.ConnectionString = Db.CnStr;
                    cmd.Connection = cn;
                    cmd.CommandText = "select * from ViewProduct";
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
}