<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeaterEx1.aspx.cs" Inherits="RepeaterEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <h3>List of Departments</h3>
                <ul>
            </HeaderTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
            <ItemTemplate>
                <li><%#Eval("DeptName") %></li>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:Repeater>
    
    </div>
    
        <asp:Repeater ID="Repeater2" runat="server">
            <HeaderTemplate>
                <h3>List of Departments</h3>
                <table>
            </HeaderTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("DeptID") %></td>
                    <td><%#Eval("DeptName") %></td>
                </tr>
            </ItemTemplate>
            <SeparatorTemplate>
                 
            </SeparatorTemplate>
        </asp:Repeater>
    
    </form>
</body>
</html>
