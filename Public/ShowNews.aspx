<%@ Page Title="نمایش خبر" Language="C#" MasterPageFile="~/Public/Public.master" AutoEventWireup="true" CodeFile="ShowNews.aspx.cs" Inherits="Public_ShowNews" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.Title
{
    font-family:Tahoma;
    font-size:large;
    color:Green;
}
.title
{
    font-family:Tahoma;
    font-size:large;
    text-decoration:none;
    color:Green;
}
.abstract
{
    font-family:Tahoma;
    font-size:small;
    color:Black;
}
.Abstract
{
    font-family:Tahoma;
    font-size:medium;
}
.text
{
    font-family:Tahoma;
    font-size:large;
    color::Black
}
.date
{
    font-family:Tahoma;
    font-size:medium;
    text-decoration:none;
    color:Green;
}
.user
{
    font-family:Tahoma;
    font-size:medium;
    text-decoration:none;
    color:Green;
}
    </style>
    <link href="../Graphics/style3.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="NewsID" 
    DataSourceID="SqlDataSource1">
        <ItemTemplate>
        &nbsp;<asp:Label ID="NewsTitleLabel" runat="server" 
            Text='<%# Eval("NewsTitle") %>' CssClass="Title" />
            <br />
            <hr />
            <asp:Label ID="NewsAbstractLable" runat="server" Text='<%# Eval("Abstract") %>' 
            CssClass="abstract"></asp:Label>
            <br />
            <hr />
        &nbsp;<asp:Label ID="NewsTextLabel" runat="server" 
            Text='<%# Eval("NewsText") %>' CssClass="text" />
            <hr />
            <br class="style2" />
            <span class="style2">تاریخ ثبت: </span>
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("NewsDate") %>' 
            CssClass="date" />
            <br class="style2" />
            <span class="style2">نام ثبت کننده:</span><asp:Label ID="FullnameLable" runat="server" 
            Text='<%# Eval("Fullname") %>' CssClass="user"></asp:Label>
            <br class="style2" />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyCS %>" 
    
    
    
        SelectCommand="SELECT News.NewsID, News.UserID, News.NewsTitle, News.Abstract, News.NewsText, News.NewsDate, [User].Fullname, [User].UserType FROM News INNER JOIN [User] ON News.UserID = [User].UserID WHERE (News.NewsTitle LIKE @NewsName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="NewsName" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

