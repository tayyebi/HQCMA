<%@ Page Title="مدیریت اخبار" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="NewsManage.aspx.cs" Inherits="Public_Public" %><%@ Register src="NewsManage.ascx" tagname="NewsManage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <uc1:NewsManage ID="NewsManage1" runat="server" />

</asp:Content>

