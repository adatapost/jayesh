﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Dept
{
    public Dept()
    {
        this.Emps = new HashSet<Emp>();
    }

    public int DeptID { get; set; }
    public string DeptName { get; set; }

    public virtual ICollection<Emp> Emps { get; set; }
}

public partial class Emp
{
    public int EmpID { get; set; }
    public string EmpName { get; set; }
    public Nullable<System.DateTime> JoinDate { get; set; }
    public Nullable<int> DeptID { get; set; }

    public virtual Dept Dept { get; set; }
}