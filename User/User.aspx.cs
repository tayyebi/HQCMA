﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] != null)
        {
            this.Title = "مدیریت حساب کاربری"+" " + Session["UserType"].ToString() + "-" + Session["Fullname"].ToString();
        }
    }
}