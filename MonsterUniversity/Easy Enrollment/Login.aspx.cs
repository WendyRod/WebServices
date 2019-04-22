using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Login : System.Web.UI.Page
    {
        private MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            LabelRespuesta.Text = "";
            Session.Contents.Remove("Login");
            FormsAuthentication.SignOut();
            Session.Timeout = 1;

            if (!IsPostBack)
            {
                Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
            }
        }


        protected void Ingresar_Click(object sender, EventArgs e)
        {

            try
            {
                string email = Mail.Text.Trim();
                var addr = new System.Net.Mail.MailAddress(email);
                if (addr.Address == email)
                {
                    
                    int res = WebService.Login(email, Pass.Text.Trim());
                    switch (res)
                    {
                        case 2:
                            Session["Email"] = email;
                            Session["Login"] = "YES";
                            Session.Timeout = 10;
                            Response.Redirect("Home_Profesores.aspx");
                            break;
                        case 3:
                            Session["Email"] = email;
                            Session["Login"] = "YES";
                            Session.Timeout = 10;
                            Response.Redirect("Home_Estudiante.aspx");
                            break;
                        default:
                            LabelRespuesta.Text = "Usuario o contraseña incorrectos.";
                            break;
                    }
                }
                else
                {
                    LabelRespuesta.Text = "Correo incorrecto.";
                }

            }
            catch
            {
                LabelRespuesta.Text = "Correo incorrecto.";
            }

            Session.Timeout = 1;

        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}