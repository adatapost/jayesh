<%@ Page Language="C#" %>

<!doctype html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>
<html>
    <head runat="server">
        <title>Title</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <h1>This is HTML Tag</h1>
<%=this.ToString() %>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

        </form>
    </body>
</html>
