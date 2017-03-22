using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_Adverties : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnDelete.Enabled = false;
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 2;
        txtName0.Text = GridView1.SelectedRow.Cells[2].Text;
        txtValue0.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnDelete.Enabled = false;
        txtName1.Text = GridView1.SelectedRow.Cells[2].Text;
        txtValue1.Text = GridView1.SelectedRow.Cells[3].Text;
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnDelete.Enabled = false;
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            btnDelete.Enabled = btnEdit.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
            SqlDataSource1.Delete();
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
            btnDelete.Enabled = btnEdit.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
            SqlDataSource1.Update();
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
            btnEdit.Enabled = btnDelete.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = !false;
    }
}