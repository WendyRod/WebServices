<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Easy_Enrollment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 834px;
            height: 460px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
            color: #FFFFFF;
        }
        .auto-style4 {
            height: 894px;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4" style="background-image: url('images/Diseño sin título.png'); background-repeat: no-repeat;">
            <table align="right" cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h1 class="auto-style6">Iniciar Sesion</h1>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <strong>Correo Electronico:&nbsp;&nbsp;</strong>&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#206BA4" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <strong>Contrasena:</strong>&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="#206BA4" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="color: #206BA4">
                        <asp:Button ID="Ingresar" runat="server" Text="Ingresar" CssClass="auto-style5" BackColor="White" ForeColor="#206BA4" OnClick="Ingresar_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <strong>¿No tiene una cuenta?</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="color: #206BA4">
                        <asp:Button ID="Registrar" runat="server" Text="¡Registrese!" CssClass="auto-style5" BackColor="White" ForeColor="#206BA4" OnClick="Registrar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
