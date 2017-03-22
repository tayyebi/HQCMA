<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Top10News.ascx.cs" Inherits="Public_Top10News" %>
<link href="../Graphics/style3.css" rel="stylesheet" type="text/css" />
<center>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl='<%# Eval("NewsTitle", "~/Public/ShowNews.aspx?id={0}") %>' 
            Text='<%# Eval("NewsTitle") %>' CssClass="title"></asp:HyperLink>
        <br />
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Abstract") %>' 
            CssClass="Abstract"></asp:Label>
        <br /><hr />
<br />
    </ItemTemplate>
</asp:DataList>
</center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyCS %>" 
    
    SelectCommand="SELECT TOP (10) NewsID, UserID, NewsTitle, Abstract, NewsText, NewsDate, NewsGroup FROM News ORDER BY NewsID DESC">
</asp:SqlDataSource>

