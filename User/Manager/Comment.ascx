<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Comment.ascx.cs" Inherits="User_Manager_Comment" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>

<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />

<uc1:Security ID="Security1" runat="server" />

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="نظرات" 
            CssClass="panelTable">
            <asp:Button ID="btnRead" runat="server" Text="مشاهده نظر" 
                onclick="btnRead_Click" CssClass="css3button" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CommentID" 
                DataSourceID="SqlDataSource2" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="انتخاب" />
                    <asp:BoundField DataField="CommentID" HeaderText="شناسه نظر" 
                        InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                    <asp:BoundField DataField="VisitorName" HeaderText="نام" 
                        SortExpression="VisitorName" />
                    <asp:BoundField DataField="VisitorEmail" HeaderText="ایمیل" 
                        SortExpression="VisitorEmail" />
                    <asp:BoundField DataField="VisitorURL" HeaderText="نشانی اینترنتی" 
                        SortExpression="VisitorURL" />
                    <asp:BoundField DataField="Coment" HeaderText="متن نظر" 
                        SortExpression="Coment" />
                    <asp:BoundField DataField="Mark" HeaderText="وضعیت" SortExpression="Mark" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:VisitorsCS %>" 
                SelectCommand="SELECT * FROM [Comment]" 
                DeleteCommand="DELETE FROM Comment WHERE (CommentID = @CommentID)" 
                UpdateCommand="UPDATE Comment SET Mark = @Mark WHERE (CommentID = @CommentID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="CommentID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="Mark" Name="Mark" PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="CommentID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="مشاهده نظر" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        ایمیل:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="500px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        آدرس اینترنتی:</td>
                    <td>
                        <asp:TextBox ID="txtAdress" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="10">
                        متن نظر</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" Width="100%" 
                            Height="284px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="End" runat="server" onclick="End_Click" Text="تائید" 
                            Width="100px" CssClass="css3button" />
                        <asp:Button ID="DeleteComment" runat="server" Text="حذف نظر" Width="100px" 
                            onclick="DeleteComment_Click" CssClass="css3button" />
                        <asp:CheckBox ID="Mark" runat="server" Text="نظر خوانده شده است" 
                            AutoPostBack="True" Checked="True" oncheckedchanged="Mark_CheckedChanged" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>




