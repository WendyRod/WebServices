<%@ Page Language="C#" MasterPageFile="~/Home-Estu.Master" AutoEventWireup="true" CodeBehind="Historial_Curso_Estu.aspx.cs" Inherits="Easy_Enrollment.Historial_Curso_Estu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Size="25pt" Text="Mis Cursos"></asp:Label>
    <br />
    <br />
    <br />
<table style="width:65%; margin-left: 193px;">
    <tr>
        <td class="auto-style4">
            <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="259px"></asp:ListBox>
        </td>
        <td>Curso:
            <asp:Label ID="Label_CourseName" runat="server"></asp:Label>
            <br />
            <br />
            Grupo:
            <asp:Label ID="Label_GroupName" runat="server"></asp:Label>
            <br />
            <br />
            Profesor:
            <asp:Label ID="Label_Professor" runat="server"></asp:Label>
            <br />
            <br />
            Estado:
            <asp:Label ID="Label_Status" runat="server"></asp:Label>
            <br />
        </td>
    </tr>
</table>
</asp:Content>