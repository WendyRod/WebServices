﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Easy_Enrollment
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Inicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Estu.aspx");
        }

        protected void Salir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}