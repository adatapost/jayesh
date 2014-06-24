<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Extended.aspx.cs" Inherits="Grid_Extended" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="ID" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" />
                <asp:BoundField DataField="JoinDate" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Join Date" />
                <asp:CheckBoxField DataField="MStatus" HeaderText="Is Married" />
                <asp:HyperLinkField DataNavigateUrlFields="Site" DataTextField="Site" HeaderText="Site" />
                <asp:ImageField DataImageUrlField="Photo" DataImageUrlFormatString="~/Photo/{0}" HeaderText="Photo">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
