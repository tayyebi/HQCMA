<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Archive.ascx.cs" Inherits="Public_Archive" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<center><table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Public/Archive.aspx" CssClass="linkheader">آرشیو</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:HyperLink ID="NewsTitleHyperLink" runat="server" 
                        NavigateUrl='<%# Eval("NewsTitle", "~/Public/ShowNews.aspx?id={0}") %>' 
                        Text='<%# Eval("NewsTitle") %>' CssClass="links"></asp:HyperLink>
<hr />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                
                SelectCommand="SELECT TOP 30 NewsTitle, NewsID FROM News ORDER BY NewsID DESC"></asp:SqlDataSource>
        </td>
    </tr>
    </table>
</center>

