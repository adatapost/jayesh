<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEmp.aspx.cs" Inherits="AddEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
         <tr>
             <td>Name</td>
             <td>
                 <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
             </td>
             <td></td>
         </tr>
         <tr>
             <td>Join Date</td>
             <td>
                 <asp:TextBox ID="txtJoinDate" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Marital Status</td>
             <td>
                 <asp:RadioButtonList ID="txtMStatus" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                     <asp:ListItem>Marrid</asp:ListItem>
                     <asp:ListItem>Unmarrid</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Photo</td>
             <td>
                 <asp:FileUpload ID="txtPhoto" runat="server" />
                 <br />
                 <asp:Image ID="Image1" runat="server" Height="106px" Width="116px" />
                 <br />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>
                 <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>
                 <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="btnAdd_Click" />
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
    </div>
    </form>
</body>
</html>
