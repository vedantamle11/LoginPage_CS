<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LoginPage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table cellpadding="4" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style2">Username :</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="BTNLOGIN" runat="server" Text="Login" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
