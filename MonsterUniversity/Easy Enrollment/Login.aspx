<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
Inherits="Easy_Enrollment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/Login.css" />
    <script src="javascript/Login.js"></script>
    <title>Login</title>
  </head>
  <body>
    <div class="box" runat="server">
      <form class="box-form" runat="server">
        <div class="box-login-tab"></div>
        <div class="box-login-tittle">
          <div class="i i-login-tittle"></div>
          <h2>Iniciar Sesi&oacute;n</h2>
        </div>
        <div class="box-login" runat="server">
          <div class="fieldset-body" id="Login_form">

            <p class="field">
              <label for="user">
                Correo Electr&oacute;nico
              </label>
              <asp:TextBox id="Mail" type="text" runat="server" />
              <span class="i i-warning"></span>
            </p>
            <p class="field">
              <label for="pass">
                Contrase&ntilde;a
              </label>
              <asp:TextBox id="Pass" type="Password" runat="server" />
              <span class="i i-warning"></span>
            </p>
              <asp:Label ID="LabelRespuesta" runat="server" ForeColor="Red"></asp:Label>
            <asp:Button
              id="Ingresar"
              runat="server"
              OnClick="Ingresar_Click"
              Text="Acceder"
            />
          </div>
            <br />
          <label for="user">¿No tienes una cuenta?</label>
          <asp:Button
            id="Registrar"
            runat="server"
            OnClick="Registrar_Click"
            Text="Registro"
          />
          <br />
        </div>
      </form>
    </div>
  </body>
</html>
