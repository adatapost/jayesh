using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection())
        {
            
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "insert into category (CategoryName) values (@p1)";
                cmd.Connection = cn;
                cmd.Parameters.AddWithValue("@p1", txtCategoryName.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblMessage.Text = "Category added successfully";
            }
        }
    }
}