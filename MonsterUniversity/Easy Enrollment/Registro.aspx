<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Registro.aspx.cs" Inherits="Easy_Enrollment.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin-left: 173px;
        }
        .auto-style3 {
            text-align: right;
            width: 361px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: inherit;
            font-size:20px;
            color:#206BA4;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            text-align: left;
            width: 361px;
        }
        .auto-style10 {
            height: 23px;
            width: 361px;
        }
        .auto-style13 {
            width: 270px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: right;
            width: 361px;
            height: 40px;
        }
        .auto-style16 {
            text-align: left;
            height: 40px;
        }
        .auto-style17 {
            text-align: right;
            width: 361px;
            height: 42px;
        }
        .auto-style18 {
            text-align: left;
            height: 42px;
        }
        .auto-style19 {
            text-align: right;
            width: 361px;
            height: 43px;
        }
        .auto-style20 {
            text-align: left;
            height: 43px;
        }
        .auto-style21 {
            text-align: right;
            width: 361px;
            height: 56px;
        }
        .auto-style22 {
            text-align: left;
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div class="auto-style14">
                <br />
            <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/images/monsters-university-logo-272139423B-seeklogo.com.png" Width="150px" />
                <br />
            <br />
            </div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Regresar" runat="server" BackColor="White" CssClass="auto-style6" ForeColor="#206BA4" Text="Regresar" OnClick="Regresar_Click" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>&nbsp;Correo:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Correo" TextMode="Email" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqCorreo" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Correo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Nombre:</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Nombre" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqNombre" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Nombre"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Primer Apellido:</strong></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Apellido1" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqApellido1" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Apellido1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Segundo Apellido:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Apellido2" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqApellido2" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Apellido2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Cedula:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Cedula" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqCedula" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Cedula"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Teléfono:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Celular" runat="server" ForeColor="#206BA4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqCelular" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextBox_Celular"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dirección<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="color: #206BA4"><strong>País:&nbsp; </strong> </td>
                    <td class="auto-style16" aria-multiselectable="False">
                        <asp:DropDownList ID="DropDownList_Pais" runat="server" CssClass="auto-style7" Height="25px" Width="140px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqPais" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="DropDownList_Pais"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="color: #206BA4"><strong>Provincia:&nbsp; </strong> </td>
                    <td class="auto-style16" aria-multiselectable="False">
                        <asp:DropDownList ID="DropDownList_Provincia" runat="server" AutoPostBack="True" Height="23px" OnSelectedIndexChanged="DropDownList_Provincia_SelectedIndexChanged" Width="140px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqProvincia" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="DropDownList_Provincia"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="color: #206BA4"><strong>Cantón:&nbsp; </strong> </td>
                    <td class="auto-style18" aria-multiselectable="False">
                        <asp:DropDownList ID="DropDownList_Canton" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Canton_SelectedIndexChanged" Width="140px" Height="22px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqCanton" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="DropDownList_Canton"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="color: #206BA4"><strong>Distrito:&nbsp; </strong> </td>
                    <td class="auto-style20" aria-multiselectable="False">
                        <asp:DropDownList ID="DropDownList_Distrito" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Distrito_SelectedIndexChanged" Width="140px" Height="20px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqDistrito" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="DropDownList_Distrito"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" style="color: #206BA4"><strong>Dirección exacta:&nbsp; </strong> </td>
                    <td class="auto-style22">
                        <textarea runat="server" id="TextArea_Direccion" class="auto-style13" name="S1" rows="2"></textarea>
                        <asp:RequiredFieldValidator ID="rqDireccion" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="TextArea_Direccion"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" style="color: #206BA4"><strong>Tipo Usuario:&nbsp; </strong> </td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList_Tipos_Usuario" runat="server" Height="27px" Width="140px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqTipoUsuario" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="DropDownList_Tipos_Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Contraseña:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <input runat="server" id="Password" type="password" /></td>
                    <%--<asp:RequiredFieldValidator ID="rqPassword" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="Password"></asp:RequiredFieldValidator>--%>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #206BA4"><strong>Verificar contraseña:&nbsp; </strong> </td>
                    <td class="auto-style4">
                        <input runat="server" id="Password_Confirm" type="password" /></td>
                    <%--<asp:RequiredFieldValidator ID="rqConfirmPassword" runat="server" ForeColor="Red" ErrorMessage="Este campo es requerido de llenar" ControlToValidate="Password_Confirm"></asp:RequiredFieldValidator>--%>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style14">
                        <asp:Button ID="Aceptar" runat="server" BackColor="White" ForeColor="#206BA4" Text="Aceptar" CssClass="auto-style6" OnClick="Aceptar_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
