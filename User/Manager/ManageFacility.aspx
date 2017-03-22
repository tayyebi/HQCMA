<%@ Page Title="مدیریت امکانات" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ManageFacility.aspx.cs" Inherits="User_Manager_ManageFacility" %>

<%@ Register src="ManageFacility.ascx" tagname="ManageFacility" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ManageFacility ID="ManageFacility1" runat="server" />
</asp:Content>

