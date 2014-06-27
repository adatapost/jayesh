using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EmpDbEntities db = new EmpDbEntities();

        var search = db.Depts.Where(x => x.DeptID == 3).FirstOrDefault();
        if (search != null)
        {
            db.Depts.Remove(search); 
            db.SaveChanges(); //commit;
        }
        else
        {
            Response.Write("Not found");
        }
        
        
       
    }
}