<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Easy_Enrollment.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div class="auto-style5">
                <br />
            <asp:Image ID="Image1" runat="server" Height="264px" ImageUrl="~/images/monsters-university-logo-272139423B-seeklogo.com.png" Width="323px" />
                <br />
            <br />
            </div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Regresar" runat="server" BackColor="White" CssClass="auto-style6" ForeColor="#206BA4" Text="Regresar" OnClick="Regresar_Click" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Nombre:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Primer Apellido:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Segundo Apellido:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Cedula:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Correo:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Celular:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox6" runat="server" ForeColor="#206BA4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        <asp:Button ID="Aceptar" runat="server" BackColor="White" ForeColor="#206BA4" Text="Aceptar" CssClass="auto-style6" OnClick="Aceptar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
