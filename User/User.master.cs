﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Public : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
            Response.Redirect("~/Login/Login.aspx");
        else if (Session["UserType"] == null)
            Response.Redirect("~/Login/Login.aspx");
    }
}