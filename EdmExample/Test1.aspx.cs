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


        //Create object of XXXXXXEntites class
        EmpDbEntities db = new EmpDbEntities();

        //Create Entity object - Emp,Dept are called entities / classes
        Dept dept = new Dept() {  DeptName = "Production"};
        
        //Submit entity to the EDM
        db.Depts.Add(dept);

        //Commit the changes
        db.SaveChanges();
        Response.Write("Added");
    }
}