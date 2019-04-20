<%@ Page Title="" Language="C#" MasterPageFile="~/Home-Prof.Master" AutoEventWireup="true" CodeFile="EstudiantesGrupo.aspx.cs" Inherits="Easy_Enrollment.EstudiantesGrupo" %>





<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="242px" Width="856px">

        <style type="text/css">
        .auto-style7 {
            width: 300px;
        }
    </style>

    <table style="width:100%;" __designer:mapid="25d">
    <tr __designer:mapid="25e">
        <td style="text-align: center" __designer:mapid="25f" class="auto-style7">Cursos:<br __designer:mapid="260" />
            <br />
            <asp:DropDownList ID="Cursos" runat="server">
            </asp:DropDownList>
        </td>
        <br/>
        <br/>
        <br/>
        <td style="text-align: center" __designer:mapid="25f" class="auto-style7">Grupos para el curso:
                <asp:Label ID="Label_Course_Name" runat="server" Text="_______"></asp:Label>
            <br __designer:mapid="264" />
            <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="184px" OnSelectedIndexChanged="GroupSelected"></asp:ListBox>
         </td>
    </tr>
</table>
        </asp:Panel>
</asp:Content>

