<%@ Page Title="نمایش کاربران" Language="C#" MasterPageFile="~/Public/Public.master" AutoEventWireup="true" CodeFile="ShowUsers.aspx.cs" Inherits="Public_ShowUsers" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

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
    </style>
    <link href="../Graphics/style3.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table cellpadding="4" cellspacing="0">
        <tr>
            <td class="header">
            مشخصات ثبت کننده</td>
        </tr>
        <tr>
            <td class="pagelable">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="UserID" 
                DataSourceID="SqlDataSource1" 
                    >
                    <ItemTemplate>
                    نام و نام خانوادگی:<asp:Label ID="FullnameLabel" runat="server" 
                        Text='<%# Eval("Fullname") %>' CssClass="Abstract" />
                        <br />
                    مسئولیت:<asp:Label ID="UserTypeLable" runat="server" 
                        Text='<%# Eval("UserType") %>' CssClass="Title"></asp:Label>
                        <hr />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                
                    SelectCommand="SELECT Fullname, UserType, UserID FROM [User] WHERE (Fullname = @Fullname)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Fullname" QueryStringField="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="header">
            خبر های ثبت شده</td>
        </tr>
        <tr>
            <td class="header">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="NewsID" 
                DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="title" 
                        NavigateUrl='<%# Eval("NewsTitle", "~/Public/ShowNews.aspx?id={0}") %>' 
                        Text='<%# Eval("NewsTitle") %>'></asp:HyperLink>
                        <br />
                        <hr />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                
                    SelectCommand="SELECT News.NewsID, News.UserID, News.NewsTitle, News.Abstract, News.NewsText, News.NewsDate, News.NewsGroup, [User].Fullname FROM News INNER JOIN [User] ON News.UserID = [User].UserID WHERE ([User].Fullname = @Fullname) ORDER BY News.NewsID DESC">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Fullname" QueryStringField="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

