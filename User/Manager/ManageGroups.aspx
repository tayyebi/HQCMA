<%@ Page Title="مدیریت گروه های خبری" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ManageGroups.aspx.cs" Inherits="User_Manager_ManageGroups" %>

<%@ Register src="ManageGroups.ascx" tagname="ManageGroups" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ManageGroups ID="ManageGroups1" runat="server" />
</asp:Content>

