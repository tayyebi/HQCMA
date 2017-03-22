<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Facility.ascx.cs" Inherits="Public_Facility" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<center>
<table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td class="header">
            امکانات</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="FacilityID" 
                DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:Label ID="FacilityNameLabel" runat="server" 
                        Text='<%# Eval("FacilityName") %>' />
                    <br />
                    <asp:Label ID="FacilityValueLabel" runat="server" 
                        Text='<%# Eval("FacilityValue") %>' />
                    <hr />
                    <br />

                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT * FROM [Facility]"></asp:SqlDataSource>
            
        </td>
        
    </tr>
    
</table>
</center>
