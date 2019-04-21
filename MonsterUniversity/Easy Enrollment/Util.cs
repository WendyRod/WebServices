using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Easy_Enrollment
{
    public class Util
    {

        private static MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();
        private static DataTable direcciones;

        public static DataTable Direcciones()
        {
            if (direcciones==null)
                direcciones = WebService.CodigosPostales();
            return direcciones;
        }
    }
}