<%@ Page Title="Customer Home" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="customer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Name : 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>Birth Date:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
<p>
    <asp:Image ID="Image1" runat="server" Height="122px" Width="157px" />
</p>
<p>&nbsp;</p>
</asp:Content>

