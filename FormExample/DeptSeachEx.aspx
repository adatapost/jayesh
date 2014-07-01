<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeptSeachEx.aspx.cs" Inherits="DeptSeachEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Search Dept Name
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="DeptID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            ID:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            Name:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Button" />
        </p>
    </form>
</body>
</html>
