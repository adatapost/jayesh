<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="HLink_Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HLink/Page2.aspx">Open Next Page</asp:HyperLink>
    
    </div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.google.com">Google</asp:HyperLink>
    </form>
</body>
</html>
