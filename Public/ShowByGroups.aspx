<%@ Page Title="نمایش گروه های خبری" Language="C#" MasterPageFile="~/Public/Public.master" AutoEventWireup="true" CodeFile="ShowByGroups.aspx.cs" Inherits="Public_ShowByGroups" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Graphics/style3.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table>
        <tr>
            <td class="pagelable">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="GroupID" 
                    DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="GroupNameLabel" runat="server" 
                            Text='<%# Eval("GroupName") %>' CssClass="Title" />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                    
                    SelectCommand="SELECT GroupID, GroupName FROM [Group] WHERE (GroupName = @GroupName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="GroupName" QueryStringField="Name" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <hr />
            </td>
            
        </tr>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        style="font-family: Tahoma">
        <ItemTemplate>
            &nbsp;<asp:HyperLink ID="NewsTitleLable" runat="server" CssClass="title" 
                NavigateUrl='<%# Eval("NewsTitle", "~/Public/ShowNews.aspx?id={0}") %>' 
                Text='<%# Eval("NewsTitle") %>'></asp:HyperLink>
            <br />
<hr />
        </ItemTemplate>
    </asp:DataList>
            </td>
        </tr>
    </table>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyCS %>" 
        
        
        SelectCommand="SELECT News.NewsTitle, News.Abstract, News.NewsText, News.NewsDate, News.NewsID, [User].UserType, [User].Fullname, News.NewsGroup FROM News INNER JOIN [User] ON News.UserID = [User].UserID WHERE (News.NewsGroup LIKE @NewsGroup) ORDER BY News.NewsID DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="NewsGroup" QueryStringField="Name" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


