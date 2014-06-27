<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageEmp.aspx.cs" Inherits="PageEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Code</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Join Date</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Dept</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
                <asp:Button ID="Button3" runat="server" Text="Update" />
                <asp:Button ID="Button4" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="Emp ID" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" />
                <asp:BoundField DataField="JoinDate" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Join Date" />
                <asp:BoundField DataField="Dept.DeptName" HeaderText="Dept" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
