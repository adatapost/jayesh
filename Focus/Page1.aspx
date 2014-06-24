<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="txt1">
    <div>
    <p>
        <asp:TextBox ID="txt1" runat="server" />
    </p>
        <p>
        <asp:TextBox ID="TextBox1" runat="server" />
    </p>
        <p>
        <asp:TextBox ID="TextBox2" runat="server" />
    </p>
        <p>
            <asp:Button ID="button1" runat="server" Text="OK" OnClick="button1_Click" />
        </p>
    </div>
    </form>
</body>
</html>
