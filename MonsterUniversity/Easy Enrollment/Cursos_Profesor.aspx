<%@ Page Title="" Language="C#" MasterPageFile="~/Home-Prof.master" AutoEventWireup="true" CodeFile="CoursesProfessor.aspx.cs" Inherits="CoursesProfessor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" __designer:mapid="25d">
    <tr __designer:mapid="25e">
        <td style="text-align: center" __designer:mapid="25f">Courses:<br __designer:mapid="260" />
            <asp:ListBox ID="ListBox_Courses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Course_Selected" Rows="8" Width="170px"></asp:ListBox>
        </td>
        <td style="text-align: center" __designer:mapid="262">Groups for course
                <asp:Label ID="Label_Course_Name" runat="server" Text="_______"></asp:Label>
            <br __designer:mapid="264" />
            <asp:ListBox ID="ListBox_Groups" runat="server" AutoPostBack="True" Rows="8" Width="170px" OnSelectedIndexChanged="GroupSelected"></asp:ListBox>
        </td>
        <td style="text-align: center" __designer:mapid="266">Course:
                <asp:Label ID="Label_Course_Name2" runat="server" Text="Label"></asp:Label>
            <br __designer:mapid="268" />Group:
                <asp:Label ID="Label_Group_Name" runat="server" Text="Label"></asp:Label>
            <br __designer:mapid="26a" />Professor:
                <asp:Label ID="Label_Professor_Name" runat="server" Text="Not assigned."></asp:Label>
            <br __designer:mapid="270" />
            <asp:Button ID="Button_Enroll" runat="server" OnClick="Button_Enroll_Click" Text="Asign Group" />
            <br __designer:mapid="272" />
            <asp:Label ID="Label_Errors" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

