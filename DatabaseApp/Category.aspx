<%@ Page Title="Manage Categories" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="a1.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h3>Category</h3>
        <hr />
        <table>
            <tr>
                <td>Category Name</td>
                <td>
                    <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

