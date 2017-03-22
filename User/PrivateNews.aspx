<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PrivateNews.aspx.cs" Inherits="User_PrivateNews" %>

<%@ Register src="TaxSecurity.ascx" tagname="TaxSecurity" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

    .title
    {
        text-decoration:none;
        color:Blue;
        font-size:medium;
        font-family:Tahoma;
    }
    .value
    {
        font-size:x-small;
        color:Gray;
    }
    .value:hover
    {
       font-size:large;
       color:Black;
    }
</style>
    <uc1:TaxSecurity ID="TaxSecurity1" runat="server" />
    <asp:Panel ID="Panel1" runat="server" GroupingText="اخبار داخلی">
    <center>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="NewsID" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("NewsTitle") %>' 
                CssClass="title"></asp:Label>
            <br />
            <asp:Label ID="lblValue" runat="server" Text='<%# Eval("NewsValue") %>' 
                CssClass="value"></asp:Label>
            <hr />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyCS %>" 
        SelectCommand="SELECT NewsID, NewsTitle, NewsValue FROM PrivateNews ORDER BY NewsID DESC">
    </asp:SqlDataSource>
    </center>
    </asp:Panel>
</asp:Content>

