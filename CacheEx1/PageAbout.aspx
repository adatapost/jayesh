<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageAbout.aspx.cs" Inherits="PageAbout" %>
<%@ OutputCache Duration="300" VaryByParam="TextBox1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1>About us</h1>
       <p>welcome ....</p>  

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
