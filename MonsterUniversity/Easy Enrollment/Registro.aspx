<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Easy_Enrollment.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            width: 87%;
            margin-left: 114px;
        }
        .auto-style3 {
            text-align: right;
            font-size: 17px;
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
        .auto-style7 {
            text-align: left;
            height: 32px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            text-align: right;
            font-size: 20px;
            height: 27px;
        }
        .auto-style10 {
            text-align: left;
            height: 27px;
        }
        input:focus {
        background: rgb(177, 92, 121);
        transform: scale3d(1.06,1.06,1.06);
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
                <br />
                <br />
                <br />
            <br />
            </div>
        </div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Regresar" runat="server" style="background-color: rgb(135, 49, 78); font-size:22px" BackColor="White" ForeColor="White" CssClass="auto-style6" Text="Regresar" OnClick="Regresar_Click" />
                    </td>
                    <td class="auto-style7">
                        </td>
                </tr>
                
                  <tr>
                      <td>
                    </td>

                  </tr>
                <tr>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Nombre:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="SingleLine" ID="txtName" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Primer Apellido:&nbsp;&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="SingleLine" ID="fstName" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Segundo Apellido:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                                <asp:TextBox runat="server" TextMode="SingleLine" ID="sndName" Height="23px"  Width="295px"></asp:TextBox>
                                <br />
                                <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Cédula:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="Phone" ID="id" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Teléfono:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="Phone" ID="phone" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Correo electrónico:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="Email" ID="email" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: rgb(135, 49, 78)"><strong>Contraseña:&nbsp;&nbsp;&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="Password" ID="pass" Height="23px" Width="295px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                    <td colspan="2" class="auto-style5">
                        &nbsp;</td>
                <tr>
                    <td colspan="2" class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Registrar" runat="server" style="background-color: rgb(135, 49, 78); font-size:22px" ForeColor="White" Text="Registrarse" CssClass="auto-style6" OnClick="Aceptar_Click" />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        <br />
    </form>
</body>
</html>
