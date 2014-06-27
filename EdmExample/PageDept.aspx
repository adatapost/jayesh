<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageDept.aspx.cs" Inherits="PageDept" %>

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
              <td>Dept Id</td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
              </td>
          </tr>
          <tr>
              <td>Dept Name</td>
              <td>
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td colspan="2">
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td colspan="2">
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                  <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
              </td>
          </tr>
      </table>
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
