<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormEx1.aspx.cs" Inherits="FormEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="DeptID" OnItemDeleting="FormView1_ItemDeleting" OnItemInserting="FormView1_ItemInserting" OnItemUpdating="FormView1_ItemUpdating" OnModeChanging="FormView1_ModeChanging" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Dept No</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("DeptID") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Dept Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("DeptName") %>'></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">Update</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data.
                <br />
                Click on
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="New">New</asp:LinkButton>
                &nbsp;button to add new department.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Dept Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Insert">Insert</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Dept No</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DeptID") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Dept Name</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DeptName") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="New">New</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerTemplate>
                <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="First" CommandName="Page">First</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument="Prev" CommandName="Page">Prev</asp:LinkButton>
                <asp:LinkButton ID="LinkButton7" runat="server" CommandArgument="Next" CommandName="Page">Next</asp:LinkButton>
                <asp:LinkButton ID="LinkButton8" runat="server" CommandArgument="Last" CommandName="Page">Last</asp:LinkButton>
            </PagerTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
