﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_About : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = false;
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        btnEdit.Enabled = btnDelete.Enabled = true;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = true;
        MultiView1.ActiveViewIndex = 2;
        txtEdit.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = false;
        txtDelete.Text = GridView1.SelectedRow.Cells[2].Text;
        MultiView1.ActiveViewIndex = 3;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = true;
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            btnEdit.Enabled = btnDelete.Enabled = false;
            SqlDataSource1.Insert();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            btnEdit.Enabled = btnDelete.Enabled = false;
            SqlDataSource1.Delete();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            btnEdit.Enabled = btnDelete.Enabled = false;
            SqlDataSource1.Update();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}