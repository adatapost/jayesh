<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1><asp:Label ID="Label1" runat="server" Text="<%$ Resources:HelloResource, AppTitle %>" BackColor="<%$ Resources:HelloResource, BkRed %>" ForeColor="<%$ Resources:HelloResource, FkWhite %>"></asp:Label></h1>
    
    </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="<%$ Resources:HelloResource, AppLogo %>" />
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
