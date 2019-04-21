<%@ Page Title="" Language="C#" MasterPageFile="~/Home-Prof.master" AutoEventWireup="true" CodeFile="Cursos_Profesor.aspx.cs" Inherits="Easy_Enrollment.Cursos_Profesor" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 335px;" __designer:mapid="25d">
    <tr __designer:mapid="25e">
        <td style="text-align: center" __designer:mapid="25f">
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Cursos"></asp:Label>
            <br />
            <br __designer:mapid="260" />
            <asp:ListBox ID="ListBox_Courses" runat="server" AutoPostBack="True" Rows="8" Width="170px"></asp:ListBox>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td style="text-align: center" __designer:mapid="262">
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="Grupos para el curso"></asp:Label>
                <br />
            <br __designer:mapid="264" />
            <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="184px" OnSelectedIndexChanged="GroupSelected"></asp:ListBox>
            <br />
            <br />
            <br />
         </td>
        <td style="text-align: center" __designer:mapid="266">Curso:
                <asp:Label ID="Label_Course_Name2" runat="server" Text="Label"></asp:Label>
            <br __designer:mapid="268" />Grupo:
                <asp:Label ID="Label_Group_Name" runat="server" Text="Label"></asp:Label>
            <br __designer:mapid="26a" />Profesor:
                <asp:Label ID="Label_Professor_Name" runat="server" Text="Not assigned."></asp:Label>
            <br __designer:mapid="270" />
            <asp:Button ID="Button_Enroll" runat="server" OnClick="Button_Enroll_Click" Text="Asignar Grupo" />
            <br __designer:mapid="272" />
            <asp:Label ID="Label_Errors" runat="server"></asp:Label>
            <br />
        </td>
    </tr>
</table>
</asp:Content>

