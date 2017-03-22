<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Public.master" AutoEventWireup="true" CodeFile="Archive.aspx.cs" Inherits="Public_Archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                SelectCommand="SELECT NewsTitle, NewsID FROM News ORDER BY NewsID DESC">
    </asp:SqlDataSource>
</asp:Content>

