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

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int no;
        int.TryParse(TextBox1.Text, out no);
        Label1.Text = (no * no).ToString();
    }
}