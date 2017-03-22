<%@ Page Title="10 خبر برتر" Language="C#" MasterPageFile="~/Public/Public.master" AutoEventWireup="true" CodeFile="Top10News.aspx.cs" Inherits="Public_Top10News" %>

<%@ Register src="Top10News.ascx" tagname="Top10News" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Graphics/style3.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Top10News ID="Top10News1" runat="server" />

</asp:Content>

