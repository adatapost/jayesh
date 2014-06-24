<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="HLink_Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Cross/Page2.aspx" Text="Button" />
    
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Cross/Page2.aspx">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
