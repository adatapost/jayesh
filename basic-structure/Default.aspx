<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="MyButton" />
        <asp:Button ID="Button2" 
            runat="server" 
            Text="Button" 
            CssClass="MyButton" />
    <asp:Button
        id="buttonOne"
        runat="server"
        Text="OK"
        CssClass="MyButton" />
    </div>

        <asp:TextBox ID="txtNo" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="MyButton"></asp:TextBox>
    </form>
</body>
</html>
