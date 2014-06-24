<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridButton1.aspx.cs" Inherits="Grid_GridButton1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="EmpId" HeaderText="No" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" />
                <asp:ButtonField ButtonType="Button" CommandName="One" HeaderText="Action1" Text="One" />
                <asp:ButtonField CommandName="Two" HeaderText="Action2" Text="Two" />
                <asp:ButtonField ButtonType="Image" CommandName="Three" HeaderText="Action3" Text="Three" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
