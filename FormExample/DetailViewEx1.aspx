<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailViewEx1.aspx.cs" Inherits="DetailViewEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" Height="50px" OnItemInserting="DetailsView1_ItemInserting" OnModeChanging="DetailsView1_ModeChanging" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
            <EmptyDataTemplate>
                <asp:Button ID="Button1" runat="server" CommandName="new" Text="Button" />
            </EmptyDataTemplate>
            <Fields>
                <asp:TemplateField HeaderText="Dept ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DeptID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DeptID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DeptID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dept Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DeptName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DeptName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DeptName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <PagerTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="first" CommandName="Page">&lt;&lt;</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="prev" CommandName="Page">&lt;</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="next" CommandName="Page">&gt;</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="last" CommandName="Page">&gt;&gt;</asp:LinkButton>
            </PagerTemplate>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
