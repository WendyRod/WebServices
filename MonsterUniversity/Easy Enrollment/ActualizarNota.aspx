<%@ Page Language="C#" MasterPageFile="~/Home-Prof.Master" AutoEventWireup="true" CodeBehind="ActualizarNota.aspx.cs" Inherits="Easy_Enrollment.ActualizarNota" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblActNota" runat="server" Font-Overline="False" Font-Size="17pt" Text="Actualizar Nota"></asp:Label>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style="width:44%; margin-left: 416px;">
    <tr>
        <center style="width: 431px">
        <td class="auto-style4" style="height: 413px; width: 145px;">
            
                <asp:Label ID="lblCodG" runat="server" Text="Código de Grupo" Font-Size="17pt" Width="200px"></asp:Label>
                <br />
                <br />
            <asp:DropDownList ID="CodGroup" runat="server" OnSelectedIndexChanged="CodGroup_SelectedIndexChanged"  style="margin-bottom: 0px" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px" Font-Size="15pt" Height="26px">
            </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico del Estudiante" Font-Size="17pt" Width="326px"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtCorreoEst" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px" Font-Size="15pt" Height="26px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblNotaAnt" runat="server" Text="Nota Anterior" Font-Size="17pt"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblNotaAnterior" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Text="Label" Width="250px" Font-Size="15pt" Height="25px"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblNuevaNota" runat="server" Text="Nueva Nota" Font-Size="17pt"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtNuevaNota" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px" Font-Size="15pt" Height="26px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblEstado" runat="server" Text="Estado" Font-Size="17pt"></asp:Label>
                <br />
                <br />
                <asp:RadioButtonList ID="Estado" runat="server" Font-Size="15pt" Height="66px" Width="158px">
                    <asp:ListItem>Aprobado</asp:ListItem>
                    <asp:ListItem>Reprobado</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="lblComent" runat="server" Text="Comentarios" Font-Size="17pt"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtComentarios" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Width="250px" Font-Size="15pt" Height="26px"></asp:TextBox>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnActualizar" runat="server" BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" Font-Size="22px" OnClick="btnActualizar_Click" Text="Actualizar" Height="44px" Width="113px" />
            <br />
                </center>
        </td>
    </tr>
</table>
</asp:Content>

