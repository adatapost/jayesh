<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample3.aspx.cs" Inherits="Sample3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <a href="sample4.aspx?no=10&name=Rajesh">Query String</a>
        <p>

            No:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </p>
        <p>

            Name:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

        </p>
    </div>
    </form>
</body>
</html>
