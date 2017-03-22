using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_InsertComment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
         btnEdit.Enabled = false;
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
         btnEdit.Enabled = false;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        txtName0.Text=GridView1.SelectedRow.Cells[4].Text.ToString();
        txtValue0.Text=GridView1.SelectedRow.Cells[5].Text.ToString();
        lblFullname0.Text=GridView1.SelectedRow.Cells[3].Text.ToString();
        lblUserID0.Text=GridView1.SelectedRow.Cells[2].Text.ToString();
         btnEdit.Enabled = false;
         MultiView1.ActiveViewIndex = 2;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        btnEdit.Enabled = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         btnEdit.Enabled = !false;
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Update();
            MultiView1.ActiveViewIndex = 0;
            btnEdit.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            MultiView1.ActiveViewIndex = 0;
            btnEdit.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void ddlFullname_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblFullname.Text = ddlFullname.SelectedItem.Text;
        lblUserID.Text = ddlFullname.SelectedItem.Value;
    }
    protected void ddlFullname0_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblFullname0.Text = ddlFullname0.SelectedItem.Text;
        lblUserID0.Text = ddlFullname0.SelectedItem.Value;
    }
}