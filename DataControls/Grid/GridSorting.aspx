<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridSorting.aspx.cs" Inherits="Grid_GridSorting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" AllowSorting="True" OnSorting="GridView1_Sorting">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="ID" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" SortExpression="EmpName" />
                <asp:BoundField DataField="JoinDate" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Join Date" SortExpression="JoinDate" />
                <asp:CheckBoxField DataField="MStatus" HeaderText="Is Married" SortExpression="MStatus" />
                <asp:HyperLinkField DataNavigateUrlFields="Site" DataTextField="Site" HeaderText="Site" />
                <asp:ImageField DataImageUrlField="Photo" DataImageUrlFormatString="~/Photo/{0}" HeaderText="Photo">
                </asp:ImageField>
            </Columns>
            <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" Position="TopAndBottom" PreviousPageText="Prev" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
