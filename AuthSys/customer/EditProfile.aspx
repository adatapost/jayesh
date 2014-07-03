<%@ Page Title="" Language="C#" MasterPageFile="~/customer/MasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="customer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>

        Full Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </p>
    <p>

        Birth Date<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    </p>
    <p>

        Photo<asp:FileUpload ID="FileUpload1" runat="server" />

    </p>
    <p>

        <asp:Image ID="Image1" runat="server" Height="85px" />

    </p>
    <p>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

    </p>
</asp:Content>

