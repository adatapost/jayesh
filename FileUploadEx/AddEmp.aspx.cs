using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
                    cmd.CommandText = "insert into emp (EmpName,JoinDate,MStatus,Photo) values (@p1,@p2,@p3,@p4)";
                    cmd.Parameters.AddWithValue("@p1", txtEmpName.Text);
                    cmd.Parameters.AddWithValue("@p2", txtJoinDate.Text);
                    cmd.Parameters.AddWithValue("@p3", txtMStatus.SelectedValue == "Marrid");
                    cmd.Parameters.AddWithValue("@p4", txtPhoto.FileName);
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();

                }
            }
            Image1.ImageUrl = "~/photo/" + txtPhoto.FileName;
            lblMessage.Text = "Employee record added successfully";
            txtEmpName.Text = "";
            txtJoinDate.Text = "";
            txtMStatus.SelectedIndex = -1;
            txtEmpName.Focus();
        }
        else
        {
            lblMessage.Text = "Please select image file";
        }

        
    }
}