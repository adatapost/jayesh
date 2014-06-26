<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridCustomize.aspx.cs" Inherits="Grid_GridCustomize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
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
                 <asp:Image ID="Image2" runat="server" Height="106px" Width="116px" />
                 <br />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>Site</td>
             <td>
                 <asp:TextBox ID="txtSite" runat="server"></asp:TextBox>
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
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("Photo","~/Photo/{0}") %>' Width="130px" />
                                </td>
                                <td>No</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmpId") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("EmpName") %>'></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Birth Date</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("JoinDate","{0:dd-MMM-yyyy}") %>'></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Merital Status</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("MStatus") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">Update</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("Photo","~/Photo/{0}") %>' Width="130px" />
                                </td>
                                <td>No</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmpId") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmpName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Birth Date</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("JoinDate","{0:dd-MMM-yyyy}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Merital Status</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("MStatus") %>' Enabled="False" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Select">More...</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
