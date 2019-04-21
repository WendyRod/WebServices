<%@ Page Language="C#" MasterPageFile="~/Home-Prof.Master" AutoEventWireup="true" CodeFile="EstudiantesGrupo.aspx.cs" Inherits="Easy_Enrollment.EstudiantesGrupo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

    <style type="text/css">
        .auto-style7 {
            width: 300px;
        }
        .auto-style8 {
            text-align: center;
            height: 46px;
            width: 340px;
        }
        .auto-style9 {
            width: 71%;
            height: 318px;
            margin-left: 224px;
        }
        .auto-style10 {
            text-align: center;
            height: 46px;
            width: 415px;
        }
    </style>

    <table __designer:mapid="25d" class="auto-style9">
    <tr __designer:mapid="25e">
        <td style="text-align: center" __designer:mapid="25f" class="auto-style8">
            <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="Cursos"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="Cursos" runat="server" Height="53px" Width="226px">
            </asp:DropDownList>
        </td>
        <br/>
        <br/>
        <br/>
        <td style="text-align: center" __designer:mapid="25f" class="auto-style10">
            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Grupos para el curso"></asp:Label>
            <br />
            <br __designer:mapid="264" />
            <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="264px" OnSelectedIndexChanged="GroupSelected" Height="164px"></asp:ListBox>
         </td>
    </tr>
</table>
</asp:Content>