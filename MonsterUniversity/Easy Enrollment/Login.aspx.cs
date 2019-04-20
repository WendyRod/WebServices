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

        }

        //public void Acceder_Click(object sender, EventArgs e)
        //{

        //    if (Method())
        //    {
        //        Response.Redirect("Exito");
        //    }
        //    else
        //    {
        //        Response.Redirect("Fallido");
        //    }

        //    //Response.Redirect("./Login.aspx");
        //}

        //private bool Method()
        //{
        //    string mail = Mail.Text;
        //    string pass = Pass.Text;

        //    if (CheckLogin(mail, pass))
        //        return true;
        //    else
        //        return false;
        //}

        ///// <summary>
        ///// Este metodo llama a la base de datos y verifica si el usuario y password existen.
        ///// </summary>
        ///// <param name="mail">Correo del usuario</param>
        ///// <param name="pass">Contraseña</param>
        ///// <returns>Retorna True en caso de encontrar coincidencias en la Base de datos.</returns>
        //private bool CheckLogin(string mail, string pass)
        //{
        //    //TODO: Crear logica para verificar el usuario.
        //    if (mail.Equals("admin") && pass.Equals("admin"))
        //        return true;
        //    else
        //        return false;
        //}

        //public void Registro_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("./Registro.aspx");
        //    //Response.Redirect("./Login.aspx");
        //}

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Estudiante.aspx");
        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}