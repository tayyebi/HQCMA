<%@ Page Title="مدیریت تبلیغات" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Adverties.aspx.cs" Inherits="User_Manager_Adverties" %>

<%@ Register src="Adverties.ascx" tagname="Adverties" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Adverties ID="Adverties1" runat="server" />
</asp:Content>

