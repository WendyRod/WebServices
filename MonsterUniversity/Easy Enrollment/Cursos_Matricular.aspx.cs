using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Cursos_Matricular : System.Web.UI.Page
    {

        private MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Email"] != null)
                {
                    ViewState["Cursos"] = null;
                    ViewState["Grupos"] = null;
                    Load_Courses_List();
                }
            }

            if (Convert.ToString(Session["Login"]) != "YES")
            {
                Session.Abandon();
                FormsAuthentication.SignOut();
                HttpContext.Current.Response.Redirect("Login.aspx", true);
            }
            Session["StartTime"] = System.DateTime.Now.ToString("yyyyMMdd HH:mm:ss");
        }


        private void Load_Courses_List()
        {
            ListBox_Courses.Items.Clear();
            ViewState["Cursos"] = WebService.CursosMatricular(Session["Email"].ToString());
            ListBox_Courses.DataSource = (DataTable) ViewState["Cursos"];
            ListBox_Courses.DataTextField = "Nombre";
            ListBox_Courses.DataValueField = "Id_Curso";
            ListBox_Courses.DataBind();
        }
        private void Load_Groups_List()
        {
            ListBox_Groups.Items.Clear();
            int value = Int32.Parse(ListBox_Courses.SelectedValue);
            ViewState["Grupos"] = WebService.GruposDeCurso(value, "I-CUAT-2019");
            ListBox_Groups.DataSource = (DataTable) ViewState["Grupos"];
            ListBox_Groups.DataTextField = "Id_Grupo";
            ListBox_Groups.DataValueField = "Id_Grupo";
            ListBox_Groups.DataBind();
        }

        protected void Course_Selected(object sender, EventArgs e)
        {

            foreach (DataRow row in ((DataTable)ViewState["Cursos"]).Rows)
            {
                if (row["Id_Curso"].ToString() == ListBox_Courses.SelectedValue)
                {
                    Label_Course_Name.Text = row["Nombre"].ToString();
                    Label_Course_Name2.Text = row["Nombre"].ToString();
                    Label_creditos.Text = row["Creditos"].ToString();
                    Label_costo.Text = row["Costo"].ToString();
                    Label_descripcion.Text = row["Descripcion"].ToString();
                    Label_Professor_Name.Text = "";
                    Label_horario.Text = "";

                }
            }

            Load_Groups_List();


        }

        protected void GroupSelected(object sender, EventArgs e)
        {
            
            foreach (DataRow row in ((DataTable)ViewState["Grupos"]).Rows)
            {
                if (row["Id_Grupo"].ToString() == ListBox_Groups.SelectedValue)
                {
                    Label_Aula.Text = row["Aula"].ToString();
                    Label_Open_Places.Text = row["CuposRestantes"].ToString();
                    Label_Professor_Name.Text = row["Nombre"].ToString();

                    int grupo = 0;
                    if (Int32.TryParse(row["Id_Grupo"].ToString(), out grupo))
                        Label_horario.Text = WebService.HorarioGrupo(grupo);


                }
            }
            



        }


        protected void Matricular(object sender, EventArgs e)
        {
            Label_Errors.Text = "Validando...";

            int grupo = Int32.Parse(ListBox_Groups.SelectedValue);
            string email = Session["Email"].ToString();


            if (WebService.MatricularGrupo(grupo, email)>0)
            {
                Label_Errors.Text = "Matriculado con éxito.";
                Response.Redirect("Home_Estudiante.aspx");
            }
            else
            {
                Label_Errors.Text = "Error en la matricula.";
            }

   
        }
    }
}