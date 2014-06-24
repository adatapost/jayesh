<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridButton2.cs" Inherits="Grid_GridButton1" %>

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
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("EmpName") %>' CommandName="Add" Text="One" />
                        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Two" CommandName="Two" />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Three">Three</asp:LinkButton>
                        <asp:Button ID="Button2" runat="server" CommandName="11" Text='<%# Eval("EmpId") %>' />
                        <asp:Button ID="Button3" runat="server" CommandName="22" Text="Button" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
