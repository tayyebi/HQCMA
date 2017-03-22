<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ManageGroups.ascx.cs" Inherits="User_Manager_ManageGroups" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />
<uc1:Security ID="Security1" runat="server" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText=" گروه های خبری" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" Width="100px" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" Width="100px" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="css3button" 
                Width="100px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="GroupID" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="GroupID" HeaderText="شناسه گروه" 
                        InsertVisible="False" ReadOnly="True" SortExpression="GroupID" />
                    <asp:BoundField DataField="GroupName" HeaderText="عنوان گروه" 
                        SortExpression="GroupName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT * FROM [Group]" 
                InsertCommand="INSERT INTO [Group] (GroupName) VALUES (@GroupName)" 
                
                UpdateCommand="UPDATE [Group] SET GroupName = @GroupName WHERE (GroupID = @GroupID)" 
                DeleteCommand="DELETE FROM [Group] WHERE (GroupID = @GroupID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="GroupID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtGroupName" Name="GroupName" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtGroupName0" Name="GroupName" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="GroupID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="اضافه کردن گروه خبری" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان گروه:</td>
                    <td>
                        <asp:TextBox ID="txtGroupName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" 
                            Width="40%" CssClass="css3button" />
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="انصراف" 
                            Width="40%" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش گروه خبری" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان گروه:</td>
                    <td>
                        <asp:TextBox ID="txtGroupName0" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="ویرایش" 
                            Width="40%" CssClass="css3button" />
                        <asp:Button ID="Button4" runat="server" Text="انصراف" Width="40%" 
                            onclick="Button4_Click" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف گروه خبری" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان گروه:</td>
                    <td>
                        <asp:TextBox ID="txtGroupName1" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button5" runat="server" Text="حذف" Width="40%" 
                            onclick="Button5_Click" CssClass="css3button" />
                        <asp:Button ID="Button6" runat="server" Text="انصراف" Width="40%" 
                            onclick="Button6_Click" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>

