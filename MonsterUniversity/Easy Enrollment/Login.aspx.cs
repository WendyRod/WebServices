using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelRespuesta.Text = "";
        }


        protected void Ingresar_Click(object sender, EventArgs e)
        {

            try
            {
                string email = Mail.Text.Trim();
                var addr = new System.Net.Mail.MailAddress(email);
                if (addr.Address == email)
                {
                    Backend backend = new Backend();
                    int res = backend.Login(email, Pass.Text.Trim());
                    switch (res)
                    {
                        case 2:
                            Response.Redirect("Home_Profesores.aspx");
                            break;
                        case 3:
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



        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}