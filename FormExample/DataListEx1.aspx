<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataListEx1.aspx.cs" Inherits="DataListEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Dept No</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("DeptID") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("DeptName") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="Button2" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Dept No</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DeptID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DeptName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="Button4" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
