<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
    </form>
</body>
</html>
