using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Cursos_Matricular : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Matricular(object sender, EventArgs e)
        {
            Response.Redirect("http://www.google.com");
        }
    }
}