using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Easy_Enrollment
{
    public class Backend
    {
        private MatriculaWSReference.ServicioWebSoapClient WebService = new MatriculaWSReference.ServicioWebSoapClient();

        private int RolId = 0;
        private string Token = "";
        private string Correo = "";

        public int Login(string email, string password)
        {
            Token = WebService.Login(email, GetHashString(password));

            int rolId = Int32.Parse(Token.Substring(0, 1));
            Correo = Token.Substring(1);

            return rolId;

        }

        public DataSet CursosMatricular()
        {
            return WebService.CursosMatricular(Token);
        }

        public DataSet SelectUsuario()
        {
            return WebService.SelectUsuario(Token);
        }

        public DataSet CodigosPostales()
        {
            return WebService.CodigosPostales();
        }

        public DataSet GruposDeCurso(int idCurso, string codigoPeriodo)
        {
            return WebService.GruposDeCurso(idCurso, codigoPeriodo);
        }

        public int RegistrarDireccion(int codigoPostal, string detalle)
        {
            // retorna 1 si funciona, deberia retornar el id de la direccion
            // retorna 0 si falla
            return WebService.RegistrarDireccion(codigoPostal, detalle);
        }

        public int RegistrarUsuario(string Nombre, string Apellido1, string Apellido2, string Correo,
            string Telefono, string Cedula, int Rol, int Direccion, string Password)
        {

            //retorna 1 si registra al usuario
            //retorna 0 si falla al registrarlo

            return RegistrarUsuario(Nombre, Apellido1, Apellido2, Correo,
             Telefono, Cedula, Rol, Direccion, GetHashString(Password));
        }

        public int MatricularGrupo(int codigoGrupo)
        {
            // hay que fijarse en la base si se esta matriculando o consultando cursos.
            //el codigo que retorna no es el correcto
       
            return WebService.MatricularGrupo(codigoGrupo, Token);
        }

        public DataSet HistorialCursos()
        {
            return WebService.HistorialCursos(Token);
        }

        public DataSet HistorialCursosProfesor()
        {
            return WebService.HistorialGruposProfesor(Token);
        }

        public int ActualizarNota(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios)
        {
            //no funciona correctamente el codigo de retorno, pero si se cambia en la base
            return WebService.ActualizarNota(codigoGrupo, emailEstudiante, nota, estado, comentarios, Token);
        }

        public DataSet EstudiantesEnGrupo(int codigoGrupo)
        {
            return WebService.EstudiantesEnGrupo(codigoGrupo, Token);
        }

        private static byte[] GetHash(string inputString)
        {
            HashAlgorithm algorithm = SHA256.Create();
            return algorithm.ComputeHash(Encoding.UTF8.GetBytes(inputString));
        }

        private static string GetHashString(string inputString)
        {
            StringBuilder sb = new StringBuilder();
            foreach (byte b in GetHash(inputString))
                sb.Append(b.ToString("X2"));

            return sb.ToString();
        }

    }
}