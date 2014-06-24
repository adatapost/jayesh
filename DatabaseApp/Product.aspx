<%@ Page Title="Manage Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h3>Product</h3>
        <hr />
        <table>
             <tr>
                 <td>Category Name</td>
                 <td>
                     <asp:DropDownList ID="txtCategoryId" runat="server"></asp:DropDownList></td>
             </tr>
            <tr>
                <td>Product Name</td>
                <td>
                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Unit</td>
                <td>
                    <asp:DropDownList ID="txtUnit" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>Gram</asp:ListItem>
                        <asp:ListItem>Nog</asp:ListItem>
                        <asp:ListItem>Doz</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

