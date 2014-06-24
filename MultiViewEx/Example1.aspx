<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View2" runat="server">
                Are you sure to delete a record?<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yes" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="No" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Record deleted successufllly
            </asp:View>
            <asp:View ID="View1" runat="server">
                Record is leaaving...
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
