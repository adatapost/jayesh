using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
 
public class Emp
{
    public int EmpId { get; set; }
    public string EmpName { get; set; }
    public string Site { get; set; }
    public string Photo { get; set; }
    public bool  MStatus { get; set; }
    public DateTime  JoinDate { get; set; }

    public static List<Emp> GetEmps()
    {
        List<Emp> list = new List<Emp>();
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
                    while (dr.Read())
                    {
                        list.Add(new Emp()
                        {
                             EmpId= dr.GetInt32(0),
                             EmpName =dr.GetString(1),
                             JoinDate = dr.GetDateTime(2),
                             MStatus = dr.GetBoolean(3),
                             Site = dr.GetString(5),
                             Photo = dr.GetString(4)

                        });
                    }
                }
                cn.Close();
            }
        }

        return list;
    }

}