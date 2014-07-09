<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.min.js"></script>
    <link href="Content/themes/base/jquery.ui.all.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
       Name : <input type="text" id="names" />
    <br />Birth Date : <input type="text" id="bdate" />
    </div>
    </form>
    <script>
        $("#names").autocomplete({
            source: [<%=Names%>]
        });

        $("#bdate").datepicker();
    </script>
</body>
</html>
