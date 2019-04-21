<%@ Page Title="" Language="C#" MasterPageFile="~/Home-Estu.Master" AutoEventWireup="true" CodeFile="Cursos_Matricular.aspx.cs" Inherits="Easy_Enrollment.Cursos_Matricular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="277px" Width="856px" style="margin-left: 110px">
     
    <br />
   
    <table style="margin-left: 0px;" class="auto-style1">
        <tr>
            <td style="text-align: center">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Cursos"></asp:Label>
                <br />
                <br />
                <br />
                
                <asp:ListBox ID="ListBox_Courses" runat="server" AutoPostBack="True" Rows="8" Width="237px" ></asp:ListBox>
                <br />
                <br />
            </td>
            <td style="text-align: center">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="Grupos del curso"></asp:Label>
                <br />
                <br />
                <br />
                <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="237px"></asp:ListBox>
                <br />
                <br />
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
                <br />
                <asp:Button ID="Matricular_Curso" runat="server" OnClick="Matricular" Text="Matricular" ForeColor="#206BA4" Font-Size="15pt"/>
                <br />
                <br />
                <asp:Label ID="Label_Errors" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
