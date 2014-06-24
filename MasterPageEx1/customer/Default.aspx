<%@ Page Title="Customer Home" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="customer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend><h4 class="shadow-text">Profile</h4></legend>
        <div>
            <p>
                <label for="name">Name</label>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="address">Address</label>
                <asp:TextBox ID="address" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="city">City</label>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="phone">Phone</label>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="email">Email</label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Submit" />
                <asp:Button ID="Button2" runat="server" Text="Clear" />
            </p>
        </div>
    </fieldset>
</asp:Content>

