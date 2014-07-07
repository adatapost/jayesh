<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <p>
          <asp:Label 
              ID="Label1" 
              runat="server" 
              meta:resourcekey="Username"
              Text="Label"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" 
               
                 runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2"
                 meta:resourcekey="Label2"
                 runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSubmit"  meta:resourcekey="btnSubmit" runat="server" Text="Button" />
        </p>
    </div>
    </form>
</body>
</html>
