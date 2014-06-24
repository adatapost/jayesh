using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Product : System.Web.UI.Page
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
                    cmd.CommandText = "select * from category";
                    cn.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        txtCategoryId.DataSource = dr;
                        txtCategoryId.DataTextField = "CategoryName";
                        txtCategoryId.DataValueField = "CategoryID";
                        txtCategoryId.DataBind();

                        txtCategoryId.Items.Insert(0, new ListItem("Select", "0"));

                    }
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection())
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cn.ConnectionString = Db.CnStr;
                cmd.CommandText = "insert into product (CategoryID,ProductName,ProductUnit) values (@p1,@p2,@p3)";
                cmd.Connection = cn;
                cmd.Parameters.AddWithValue("@p1", txtCategoryId.SelectedValue);
                cmd.Parameters.AddWithValue("@p2", txtProductName.Text);
                cmd.Parameters.AddWithValue("@p3", txtUnit.SelectedValue);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblMessage.Text = "Product added successfully";

            }
        }
    }
}