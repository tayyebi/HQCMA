<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="User_Menu" %>

<style type="text/css">
.links
{
color:Blue;
text-decoration:none;
font-size:x-small;
}
.links:hover
{
    font-size:larger;
    background-color:White;
    color:Black;
}
.managerlinks
{
    color:Gray;
    font-size:x-small;
    font-family:Tahoma;
}
.managerlinks:hover
{
    color:Black;
    text-decoration:none;
    font-size:larger;
}
</style>

<table cellpadding="4" cellspacing="0">
    <tr>
        <td>

<asp:HyperLink ID="NewsManage" runat="server" 
    NavigateUrl="~/User/News/NewsManage.aspx" CssClass="links" EnableViewState="False">مدیریت اخبار خارجی</asp:HyperLink>

    <br />
<asp:HyperLink ID="MessageManage" runat="server" 
    NavigateUrl="~/User/MessageManage.aspx" CssClass="links" EnableViewState="False">مدیریت پیام ها</asp:HyperLink>
    <br />
<asp:HyperLink ID="PrivateNews" runat="server" 
    NavigateUrl="~/User/PrivateNews.aspx" CssClass="links" EnableViewState="False">اخبار داخلی</asp:HyperLink>
<br />
<asp:HyperLink ID="SendMessage" runat="server" 
    NavigateUrl="~/User/Manager/InsertComment.aspx" CssClass="managerlinks" 
                EnableViewState="False">ارسال پیام</asp:HyperLink>
    <br />
<asp:HyperLink ID="CommentManage" runat="server" 
    NavigateUrl="~/User/Manager/Comment.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت نظرات</asp:HyperLink>
    <br />
<asp:HyperLink ID="UsersManage" runat="server" 
    NavigateUrl="~/User/Manager/ManageUsers.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت کاربران</asp:HyperLink>
    <br />
<asp:HyperLink ID="FacilityManage" runat="server" 
    NavigateUrl="~/User/Manager/ManageFacility.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت امکانات</asp:HyperLink>
    <br />
<asp:HyperLink ID="GroupsManage" runat="server" 
    NavigateUrl="~/User/Manager/ManageGroups.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت گروه ها</asp:HyperLink>
    <br />
<asp:HyperLink ID="AdvertiesManage" runat="server" 
    NavigateUrl="~/User/Manager/Adverties.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت تبلیغات</asp:HyperLink>
    <br />
<asp:HyperLink ID="AboutManage" runat="server" 
    NavigateUrl="~/User/Manager/About.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت متن درباره</asp:HyperLink>
            <br />
<asp:HyperLink ID="PrivateNewsManage" runat="server" 
    NavigateUrl="~/User/Manager/PrivateNews.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت اخبار داخلی</asp:HyperLink>
    <br />
<asp:HyperLink ID="ExternalLinksManage" runat="server" 
    NavigateUrl="~/User/Manager/ExternalLinks.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت لینک های خارجی</asp:HyperLink>
            <br />
<asp:HyperLink ID="TaxManage" runat="server" 
    NavigateUrl="~/User/Manager/UsersTax.aspx" CssClass="managerlinks" 
                EnableViewState="False">مدیریت حق عضویت کاربران</asp:HyperLink>
<br />
        </td>
    </tr>
</table>




