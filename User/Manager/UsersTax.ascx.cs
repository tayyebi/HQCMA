using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_UsersTax : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_Edit.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_Edit.Enabled = true;
        lblName.Text = GridView1.SelectedRow.Cells[1].Text;

    }
    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Output.Text = DropDownList1.SelectedItem.Value.ToString();
        if (Output.Text == "پرداخت نشده")
        {
            Output.ForeColor = System.Drawing.Color.Red;
            Output.BackColor = System.Drawing.Color.White;
        }
        else if (Output.Text == "پرداخت شده")
        {
            Output.ForeColor = System.Drawing.Color.Green;
            Output.BackColor = System.Drawing.Color.White;
        }
        else if (Output.Text =="دوره آزمایشی (بدون حق عضویت)")
        {
            Output.ForeColor = System.Drawing.Color.Yellow;
            Output.BackColor = System.Drawing.Color.Black;
        }
        {

        }

    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Output.Text == "دوره آزمایشی (بدون حق عضویت)")
            {
                Output.Text = "";
            }
            SqlDataSource1.Update();
            MultiView1.ActiveViewIndex = 0;
            btn_Edit.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btn_Edit.Enabled = false;
        }
    }
}