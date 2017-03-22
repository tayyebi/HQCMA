<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InsertComment.ascx.cs" Inherits="User_Manager_InsertComment" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="پیام ها" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" style="height: 26px" Width="100px" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" Width="100px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CommentID" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="CommentID" HeaderText="شناسه نظر" 
                        InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
                    <asp:BoundField DataField="UserID" HeaderText="شناسه دریافت کننده" 
                        SortExpression="UserID" />
                    <asp:BoundField DataField="Fullname" HeaderText="نام ونام خانوادگی" 
                        SortExpression="Fullname" />
                    <asp:BoundField DataField="Title" HeaderText="عنوان پیام" 
                        SortExpression="Title" />
                    <asp:BoundField DataField="Value" HeaderText="مقدار پیام" 
                        SortExpression="Value" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM UsersComment WHERE (CommentID = @CommentID)" 
                
                SelectCommand="SELECT CommentID, UserID, Fullname, Title, Value FROM UsersComment ORDER BY CommentID DESC" 
                
                InsertCommand="INSERT INTO UsersComment(UserID, Fullname, Title, Value) VALUES (@UserID, @Fullname, @Title, @Value)" 
                UpdateCommand="UPDATE UsersComment SET UserID = @UserID, Fullname = @Fullname, Title = @Title, Value = @Value WHERE (CommentID = @CommentID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="CommentID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="lblUserID" Name="UserID" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="lblFullname" Name="Fullname" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtName" Name="Title" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue" Name="Value" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="lblUserID0" Name="UserID" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="lblFullname0" Name="Fullname" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtName0" Name="Title" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue0" Name="Value" PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="CommentID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="پیام جدید" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان پیام:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدار پیام:</td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtValue" runat="server" Height="196px" TextMode="MultiLine" 
                            Width="349px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                       
                        نام و نام خانوادگی در یافت کننده:</td>
                    <td>
                        <asp:DropDownList ID="ddlFullname" runat="server" DataSourceID="SqlDataSource2" 
                            DataTextField="Fullname" DataValueField="UserID" Width="100%" 
                            AutoPostBack="True" onselectedindexchanged="ddlFullname_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Label ID="lblUserID" runat="server" Text="شناسه "></asp:Label>
                        <asp:Label ID="lblFullname" runat="server" Text="نام"></asp:Label>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                            ProviderName="<%$ ConnectionStrings:MyCS.ProviderName %>" 
                            SelectCommand="SELECT [UserID], [Fullname] FROM [User]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ارسال" 
                            Width="61px" />
                        <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش پیام" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان پیام:</td>
                    <td>
                        <asp:TextBox ID="txtName0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدار پیام:</td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtValue0" runat="server" Height="196px" TextMode="MultiLine" 
                            Width="349px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نام و نام خانوادگی در یافت کننده:</td>
                    <td>
                        <asp:DropDownList ID="ddlFullname0" runat="server" 
                            datasourceid="SqlDataSource2" DataTextField="Fullname" DataValueField="UserID" 
                            Width="100%" AutoPostBack="True" 
                            onselectedindexchanged="ddlFullname0_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="lblUserID0" runat="server" Text="شناسه "></asp:Label>
                        <asp:Label ID="lblFullname0" runat="server" Text="نام"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ویرایش" 
                            Width="61px" />
                        <asp:Button ID="Cancel0" runat="server" onclick="Cancel_Click" Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <br />
</asp:MultiView>





