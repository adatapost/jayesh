<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridButton3.aspx.cs" Inherits="Grid_GridButton3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId,EmpName" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="ID" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" />
                <asp:BoundField DataField="JoinDate" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Date of Join" />
                <asp:ButtonField CommandName="select" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
