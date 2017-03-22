<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PrivateNews.aspx.cs" Inherits="User_Manager_PrivateNews" %>

<%@ Register src="PrivateNews.ascx" tagname="PrivateNews" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:PrivateNews ID="PrivateNews1" runat="server" />
</asp:Content>

