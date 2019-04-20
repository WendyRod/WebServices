<%@ Page Language="C#" MasterPageFile="~/Home-Prof.Master" AutoEventWireup="true" CodeBehind="ActualizarNota.aspx.cs" Inherits="Easy_Enrollment.ActualizarNota" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblActNota" runat="server" Font-Overline="False" Font-Size="17pt" Text="Actualizar Nota"></asp:Label>
    <br />
    <br />
    <br />
<table style="width:64%; margin-left: 208px;">
    <tr>
        <td class="auto-style4" style="height: 413px">
            <center style="width: 431px">
                <asp:Label ID="lblCodG" runat="server" Text="Código de Grupo"></asp:Label>
                <br />
                <br />
            <asp:DropDownList ID="CodGroup" runat="server" OnSelectedIndexChanged="CodGroup_SelectedIndexChanged" style="margin-bottom: 0px" Width="250px">
            </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico del Estudiante"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtCorreoEst" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblNotaAnt" runat="server" Text="Nota Anterior"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblNotaAnterior" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Text="Label" Width="250px"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblNuevaNota" runat="server" Text="Nueva Nota"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtNuevaNota" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                <br />
                <asp:CheckBoxList ID="Estado" runat="server" OnSelectedIndexChanged="Estado_SelectedIndexChanged">
                    <asp:ListItem>Aprobado</asp:ListItem>
                    <asp:ListItem>Reprobado</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:Label ID="lblComent" runat="server" Text="Comentarios"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtComentarios" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px"></asp:TextBox>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnActualizar" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Font-Size="13pt" OnClick="btnActualizar_Click" Text="Actualizar" />
            <br />
                </center>
        </td>
    </tr>
</table>
</asp:Content>

