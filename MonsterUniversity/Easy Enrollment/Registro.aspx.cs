using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Registro : System.Web.UI.Page
    {

        private MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();
        //DataTable direcciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPaises();
                CargarProvincias();
                CargarCantones();
                CargarDistritos();
                CargarTiposUsuario();
            }

        }

        protected void CargarTiposUsuario()
        {
            var tiposUsuario = new Dictionary<int, string>();
            tiposUsuario.Add(2, "Profesor");
            tiposUsuario.Add(3, "Estudiante");

            DropDownList_Tipos_Usuario.DataSource = tiposUsuario;
            DropDownList_Tipos_Usuario.DataTextField = "Value";
            DropDownList_Tipos_Usuario.DataValueField = "Key";
            DropDownList_Tipos_Usuario.DataBind();
        }
        protected void CargarPaises()
        {

            List<string> paises = new List<string>{ "Costa Rica" };
            DropDownList_Pais.DataSource = paises;
            DropDownList_Pais.DataBind(); 

        }
        protected void CargarProvincias()
        {
            var provincias = new Dictionary<int, string>();
            foreach (DataRow row in Util.Direcciones().Rows)
            {
                int idProv = Int32.Parse(row["Id_Provincia"].ToString());
                if (!provincias.ContainsKey(idProv))
                {
                    provincias.Add(idProv, row["Nombre"].ToString());
                }

            }
            DropDownList_Provincia.DataSource = provincias;
            DropDownList_Provincia.DataTextField = "Value";
            DropDownList_Provincia.DataValueField = "Key";
            DropDownList_Provincia.DataBind();
                
        }
        protected void CargarCantones()
        {
            var cantones = new Dictionary<int, string>();
            int idProvSelected = Int32.Parse(DropDownList_Provincia.SelectedValue);
            foreach (DataRow row in Util.Direcciones().Rows)
            {
                int idProv = Int32.Parse(row["Id_Provincia"].ToString());
                int idCant = Int32.Parse(row["Id_Canton"].ToString());

                if (idProv==idProvSelected && !cantones.ContainsKey(idCant))
                {
                    cantones.Add(idCant, row["Nombre1"].ToString());
                }

            }
            DropDownList_Canton.Items.Clear();
            DropDownList_Canton.DataSource = cantones;
            DropDownList_Canton.DataTextField = "Value";
            DropDownList_Canton.DataValueField = "Key";
            DropDownList_Canton.DataBind();
        }
        protected void CargarDistritos()
        {
            var distritos = new Dictionary<int, string>();
            int idProvSelected = Int32.Parse(DropDownList_Provincia.SelectedValue);
            int idCantSelected = Int32.Parse(DropDownList_Canton.SelectedValue);
            foreach (DataRow row in Util.Direcciones().Rows)
            {
                int idProv = Int32.Parse(row["Id_Provincia"].ToString());
                int idCant = Int32.Parse(row["Id_Canton"].ToString());
                int idDist = Int32.Parse(row["Id_Distrito"].ToString());
                if (idProv == idProvSelected && idCant==idCantSelected && 
                    !distritos.ContainsKey(idDist))
                {
                    distritos.Add(idDist, row["Nombre2"].ToString());
                }
                
            }
            DropDownList_Distrito.Items.Clear();
            DropDownList_Distrito.DataSource = distritos;
            DropDownList_Distrito.DataTextField = "Value";
            DropDownList_Distrito.DataValueField = "Key";
            DropDownList_Distrito.DataBind();
            CargarCodigoDireccion();
        }
        protected void CargarCodigoDireccion()
        {
            int idProvSelected = Int32.Parse(DropDownList_Provincia.SelectedValue);
            int idCantSelected = Int32.Parse(DropDownList_Canton.SelectedValue);
            int idDistSelected = Int32.Parse(DropDownList_Distrito.SelectedValue);

            foreach (DataRow row in Util.Direcciones().Rows)
            {
                int idProv = Int32.Parse(row["Id_Provincia"].ToString());
                int idCant = Int32.Parse(row["Id_Canton"].ToString());
                int idDist = Int32.Parse(row["Id_Distrito"].ToString());

                if (idProv == idProvSelected && idCant == idCantSelected &&
                    idDist == idDistSelected)
                {
                    ViewState["CodDireccion"] = Int32.Parse(row["Codigo"].ToString());
                }

            }
        }
        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            //Validar todos los campos
            string nombre = TextBox_Nombre.Text.Trim();
            string apellido1 = TextBox_Apellido1.Text.Trim();
            string apellido2 = TextBox_Apellido2.Text.Trim();
            string cedula = TextBox_Cedula.Text.Trim();
            string correo = TextBox_Correo.Text.Trim();
            string celular = TextBox_Celular.Text.Trim();
            string passwordHashed = Password.Value;
            int idRol = Int32.Parse(DropDownList_Tipos_Usuario.SelectedValue);
            
            int codDireccion = Int32.Parse(ViewState["CodDireccion"].ToString());
            int idDireccion = WebService.RegistrarDireccion(codDireccion, TextArea_Direccion.Value);
            int confirmacion = WebService.RegistrarUsuario(nombre, apellido1, apellido2, correo, celular, cedula,idRol, idDireccion, passwordHashed);
                
        }

        protected void DropDownList_Provincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarCantones();
        }

        protected void DropDownList_Canton_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDistritos();
        }


        protected void DropDownList_Distrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarCodigoDireccion();
        }
    }
}