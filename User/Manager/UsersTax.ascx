<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsersTax.ascx.cs" Inherits="User_Manager_UsersTax" %>
<%@ Register src="../TaxSecurity.ascx" tagname="TaxSecurity" tagprefix="uc1" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc2" %>

<uc2:Security ID="Security1" runat="server" />

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="حق عضویت کاربران">
            <asp:Button ID="btn_Edit" runat="server" Enabled="False" 
                onclick="btn_Edit_Click" Text="ویرایش حق عضویت کاربر" Width="278px" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="Fullname" HeaderText="نام و نام خانوادگی کاربر" 
                        SortExpression="Fullname" />
                    <asp:BoundField DataField="UserTax" HeaderText="وضعیت مالی" 
                        SortExpression="UserTax" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT UserID, UserPass, Fullname, UserType, UserNumber, UserTax FROM [User] WHERE (UserType &lt;&gt; N'مدیر') ORDER BY UserID DESC" 
                UpdateCommand="UPDATE [User] SET UserTax = @UserTax WHERE (Fullname = @Fullname)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="Output" Name="UserTax" PropertyName="Text" />
                    <asp:ControlParameter ControlID="lblName" Name="Fullname" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="ویرایش">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        وضعیت مالی:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="پرداخت شده">کاربر حق عضویت خود را پرداخت کرده است</asp:ListItem>
                            <asp:ListItem Value="پرداخت نشده">کاربر حق عضویت خود را پرداخت نکرده است</asp:ListItem>
                            <asp:ListItem Selected="True" Value="دوره آزمایشی (بدون حق عضویت)">دوره آزمایشی (بدون حق عضویت)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        خروجی:</td>
                    <td>
                        <asp:Label ID="Output" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ثبت" />
                        <asp:Button ID="cancel" runat="server" onclick="cancel_Click" Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>


