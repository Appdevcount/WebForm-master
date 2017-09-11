<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASPNETIdentityOwinMiddlewareAuth.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Register</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">UserName</td>
                <td>
                    <asp:TextBox ID="Uname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="Pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td>
                    <asp:TextBox ID="Cpwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Registerbtn" runat="server" Text="Register" OnClick="Registerbtn_Click" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="RegisterStatus" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
