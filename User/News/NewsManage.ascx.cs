using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_News_News : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDelete.Visible = btnEdit.Visible = false;
        btnEdit.Enabled = btnDelete.Enabled = false;

    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        btnDelete.Visible = btnEdit.Visible = false;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        txtTitle0.Text = GridView1.SelectedRow.Cells[3].Text;
        btnDelete.Visible = btnEdit.Visible = false;
        txtAbstract0.Text = GridView1.SelectedRow.Cells[4].Text;
        txtText0.Text = GridView1.SelectedRow.Cells[5].Text;
        txtDate0.Text = GridView1.SelectedRow.Cells[6].Text;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        btnEdit.Enabled = false;
        btnDelete.Enabled = false;
        txtTitle1.Text = GridView1.SelectedRow.Cells[3].Text;
        btnDelete.Visible = btnEdit.Visible = false;
        txtAbstract1.Text = GridView1.SelectedRow.Cells[4].Text;
        txtText1.Text = GridView1.SelectedRow.Cells[5].Text;
        Group1.Text = GridView1.SelectedRow.Cells[7].Text;
        txtDate1.Text = GridView1.SelectedRow.Cells[6].Text;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnEdit.Enabled = btnDelete.Enabled = true;
        btnDelete.Visible = btnEdit.Visible = true;
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        btnDelete.Visible = btnEdit.Visible = false;
        MultiView1.ActiveViewIndex = 0;
        btnDelete.Enabled = btnEdit.Enabled = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            HiddenField1.Value = Group.SelectedItem.ToString();
            txtDate.Text = DateTime.Now.ToString();
            SqlDataSource2.Insert();
            MultiView1.ActiveViewIndex = 0;
            btnDelete.Enabled = btnEdit.Enabled = false;
            btnDelete.Visible = btnEdit.Visible = false;
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
            SqlDataSource2.Delete();
            MultiView1.ActiveViewIndex = 0;
            btnDelete.Enabled = btnEdit.Enabled = false;
            btnDelete.Visible = btnEdit.Visible = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btnDelete.Enabled = btnEdit.Enabled = btnEdit.Visible = btnDelete.Visible = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            HiddenField2.Value = Group0.SelectedItem.ToString();
            SqlDataSource2.Update();
            MultiView1.ActiveViewIndex = 0;
            btnDelete.Enabled = btnEdit.Enabled = false;
            btnDelete.Visible = btnEdit.Visible = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btnDelete.Enabled = btnEdit.Enabled = btnEdit.Visible = btnDelete.Visible = false;
        }
    }
}