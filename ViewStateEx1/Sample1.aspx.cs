﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["StartTime"] = DateTime.Now;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ViewState["StartDate"] != null)
        {
            DateTime start = DateTime.Parse(ViewState["StartTime"].ToString());
            TimeSpan diff = DateTime.Now - start;
            Label1.Text = diff.TotalMilliseconds.ToString();
        }
    }
}