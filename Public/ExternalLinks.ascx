<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ExternalLinks.ascx.cs" Inherits="Public_ExternalLinks" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<center>
<table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td class="header">
            لینک های خارجی</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="LinkID" 
                DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="links" 
                        NavigateUrl='<%# Eval("LinkURL") %>' Text='<%# Eval("Link") %>'></asp:HyperLink>
<hr />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT * FROM [ExternalLinks]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</center>
