<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Groups.ascx.cs" Inherits="Public_Groups" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<center><table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td class="header">
  گروه های خبری</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    &nbsp;<asp:HyperLink ID="GroupNameLable" runat="server" 
                        Text='<%# Eval("GroupName") %>' CssClass="links" 
                        
                        NavigateUrl='<%# Eval("GroupName", "~/Public/ShowByGroups.aspx?Name={0}") %>'></asp:HyperLink>
                    <br />
                    <hr />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                
                SelectCommand="SELECT GroupName, GroupID FROM [Group] ORDER BY GroupID DESC"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</center>
