<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="MessageManage.aspx.cs" Inherits="User_News_CommentManage" %>

<%@ Register src="TaxSecurity.ascx" tagname="TaxSecurity" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Graphics/User/Style4.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel1" runat="server" GroupingText="پیام های مدیر برای شما">
                <asp:Button ID="ViewComment" runat="server" onclick="ViewComment_Click" 
                    Text="مشاهده پیام" />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                    EmptyDataText="شما هیچ پیامی ندارید" EnableModelValidation="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                        <asp:BoundField DataField="CommentID" HeaderText="شناسه پیام" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                        <asp:BoundField DataField="UserID" HeaderText="شناسه دریافت کننده" 
                            SortExpression="UserID" />
                        <asp:BoundField DataField="Fullname" HeaderText="نام دریافت کننده" 
                            SortExpression="Fullname" />
                        <asp:BoundField DataField="Title" HeaderText="عنوان پیام" 
                            SortExpression="Title" />
                        <asp:BoundField DataField="Value" HeaderText="مقدار پیام" 
                            SortExpression="Value" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        <asp:Label ID="lbl_Title" runat="server" style="font-family: Tahoma" 
                            Text="عنوان"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-right: 40px">
                        <asp:TextBox ID="txt_Value" runat="server" Height="129px" ReadOnly="True" 
                            style="font-family: Tahoma" TextMode="MultiLine" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="margin-right: 40px">
                        <asp:Label ID="lbl_CommentID" runat="server" Text="شناسه پیام"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-right: 40px">
                        <asp:Button ID="btn_back" runat="server" onclick="btn_back_Click" 
                            Text="بازگشت" />
                        <asp:Button ID="btn_delete" runat="server" onclick="btn_delete_Click" 
                            Text="حذف پیام" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyCS %>" 
        
        SelectCommand="SELECT CommentID, UserID, Fullname, Title, Value FROM UsersComment WHERE (UserID = @UserID) OR (@UserType = N'مدیر') ORDER BY CommentID DESC" 
        DeleteCommand="DELETE FROM UsersComment WHERE (CommentID = @CommentID)" 
        ProviderName="<%$ ConnectionStrings:MyCS.ProviderName %>">
        <DeleteParameters>
            <asp:ControlParameter ControlID="lbl_CommentID" Name="CommentID" 
                PropertyName="Text" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="@UserID" Name="UserID" 
                SessionField="UserID" />
            <asp:SessionParameter DefaultValue="@UserType" Name="UserType" 
                SessionField="UserType" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

