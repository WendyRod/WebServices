<%@ Page Title="" Language="C#" MasterPageFile="~/Home-Estu.Master" AutoEventWireup="true" CodeFile="Cursos_Matricular.aspx.cs" Inherits="Easy_Enrollment.Cursos_Matricular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="242px" Width="856px">
     
    <br />
   
    <table style="width:100%;">
        <tr>
            <td style="text-align: center">
                Cursos:<br />
                
                <asp:ListBox ID="ListBox_Courses" runat="server" AutoPostBack="True" Rows="8" Width="170px" ></asp:ListBox>
            </td>
            <td style="text-align: center">
                Grupos del curso
                <asp:Label ID="Label_Course_Name" runat="server" Text="_______"></asp:Label>
                <br />
                <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="170px"></asp:ListBox>
            </td>
            <td style="text-align: center">Curso:
                <asp:Label ID="Label_Course_Name2" runat="server" Text="Label"></asp:Label>
                <br />
                Grupo:
                <asp:Label ID="Label_Group_Name" runat="server" Text="Label"></asp:Label>
                <br />
                Profesor:
                <asp:Label ID="Label_Professor_Name" runat="server" Text="Not assigned."></asp:Label>
                <br />
                Lugares Disponibles:
                <asp:Label ID="Label_Open_Places" runat="server" Text="0"></asp:Label>
                <br />
                Maxima Capacidad:
                <asp:Label ID="Label_Max_Capacity" runat="server" Text="0"></asp:Label>
                <br />
                <asp:Button ID="Matricular_Curso" runat="server" OnClick="Matricular" Text="Matricular" ForeColor="#206BA4"/>
                <br />
                <asp:Label ID="Label_Errors" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
