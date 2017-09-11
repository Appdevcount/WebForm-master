<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrystalWebform.aspx.cs" Inherits="WebForm.CrystalReport.CrystalWebform" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
        </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" HasCrystalLogo="False" HasToggleGroupTreeButton="false"
             />
        HasCrystalLogo="False" HasToggleGroupTreeButton="false"  EnableTheming="true"
             HasToggleParameterPanelButton="false" ToggleSidePanel="None" ShowToggleSidePanelButton="False"
        <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="OpenNewReportWindow()" />
    </form>
    <script type="text/javascript">
        function OpenNewReportWindow() {
 
            window.open("../CrystalReport/CrystalWebform.aspx", 'CrystalReportWindow', 'scrollbars=yes,resizable=no,addressbar=0,titlebar=no,status=no,toolbar=no,menubar=no,navigationbar=no,height=600,width=890,location=no');
            }

    </script>
</body>
</html>
