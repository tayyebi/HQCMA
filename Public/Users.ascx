<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users.ascx.cs" Inherits="Public_Users" %>
<center><div>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td class="header">
            عضو ها</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                DataKeyField="UserID">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("Fullname", "~/Public/ShowUsers.aspx?id={0}") %>' 
                        Text='<%# Eval("Fullname") %>' CssClass="links"></asp:HyperLink>
                    <hr />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                
                
                SelectCommand="SELECT UserID, UserPass, Fullname, UserType, UserNumber FROM [User] WHERE (Fullname &lt;&gt; N'پشتیبان') ORDER BY UserID DESC"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</div></center>

