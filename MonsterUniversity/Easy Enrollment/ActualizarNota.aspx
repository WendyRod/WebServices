<%@ Page Language="C#" MasterPageFile="~/Home-Prof.Master" AutoEventWireup="true" CodeBehind="ActualizarNota.aspx.cs" Inherits="Easy_Enrollment.ActualizarNota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Mis Cursos...<br />
<table style="width:100%;">
    <tr>
        <td class="auto-style4">
            <asp:ListBox ID="ListBox_CodGroup"  runat="server" AutoPostBack="True" Rows="8" Width="259px"></asp:ListBox>
        </td>
        <td>Curso:
            <asp:Label ID="Label_CourseName" runat="server"></asp:Label>
            <br />
            Grupo:
            <asp:Label ID="Label_GroupName" runat="server"></asp:Label>
            <br />
            Profesor:
            <asp:Label ID="Label_Professor" runat="server"></asp:Label>
            <br />
            Estado:
            <asp:Label ID="Label_Status" runat="server"></asp:Label>
            <br />
        </td>
    </tr>
</table>
</asp:Content>

<%--int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios--%>