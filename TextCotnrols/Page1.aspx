<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

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
             <td>No</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
             </td>
             <td></td>
         </tr>
         <tr>
             <td>Name</td>
             <td>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" Text="Birth Date"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Literal ID="Literal1" runat="server" Text="Address"></asp:Literal>
             </td>
             <td>
                 <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
    </div>
    </form>
</body>
</html>
