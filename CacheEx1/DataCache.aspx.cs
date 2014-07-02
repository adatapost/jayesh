using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataCache : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Cache.Remove("city");
        if (Cache["city"] == null)
        {
            Cache["city"] = new String[] {"Mehsana","Patan","Surat","MM" };
            Cache["last_cache"] = DateTime.Now;
        }

        GridView1.DataSource = Cache["city"];
        GridView1.DataBind();

        if (Cache["last_cache"] != null)
        {
            Label1.Text = Cache["last_cache"].ToString();
        }
    }
}