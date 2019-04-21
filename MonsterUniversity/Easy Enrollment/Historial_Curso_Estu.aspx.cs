using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Historial_Curso_Estu : System.Web.UI.Page
    {

        private MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();


        protected void Page_Load(object sender, EventArgs e)
        {
            CargarHistorial();
        }


        public void CargarHistorial()
        {

            if (Session["Email"] != null)
            {
                GridView1.DataSource = WebService.HistorialCursos(Session["Email"].ToString());
                GridView1.DataBind();
            }
            
        }
            
    }

}