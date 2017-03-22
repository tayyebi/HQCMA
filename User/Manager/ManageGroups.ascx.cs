using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_ManageGroups : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        txtGroupName0.Text = GridView1.SelectedRow.Cells[2].Text;
        btnEdit.Enabled = btnDelete.Enabled = false; 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Update();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Delete();
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        txtGroupName1.Text = GridView1.SelectedRow.Cells[2].Text;
        btnEdit.Enabled = btnDelete.Enabled = false; 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = true;
    }
}