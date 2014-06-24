<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WizardEx1.aspx.cs" Inherits="WizardEx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="229px" Width="411px">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Intoduction">
                    <div>
                        <h3>Introduction</h3>
                        <hr />
                        <p>This is the</p>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Chapter 1">
                     <div>
                        <h3>Chapter 1</h3>
                        <hr />
                        <p>This is the</p>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Chapter 2">
                     <div>
                        <h3>Chapter 2</h3>
                        <hr />
                        <p>This is the</p>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
