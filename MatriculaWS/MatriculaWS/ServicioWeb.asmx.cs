using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;

namespace MatriculaWS
{
    /// <summary>
    /// Summary description for ServicioWeb
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicioWeb : System.Web.Services.WebService
    {
        private readonly string ConnectionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog = Matricula; Integrated Security = True";

        private SqlConnection Conn = null;

        

        [WebMethod]
        public int Login(string correo, string passwordhashed)
        {

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("USUARIO_LOGIN", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;
                cmd.Parameters.AddWithValue("@pPassword", SqlDbType.NVarChar).Value = passwordhashed;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }

            try
            {
                return Int32.Parse(ds.Tables[0].Rows[0]["Id_Rol"].ToString());
            
            }
            catch (Exception ex)
            {
                //"Correo o contraseña incorrectos."
                return -1;
            }
            
            //return createToken(rol, correo);
        }

        [WebMethod]
        public int RegistrarUsuario(string Nombre, string Apellido1, string Apellido2, string Correo, string Telefono, string Cedula, int Rol, int Direccion, string PasswordHashed)
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            //string[] salted = Salt(PasswordHashed);

            DataSet ds = new DataSet();
            int returnValue = 0;

            using (SqlCommand cmd = new SqlCommand("USUARIO_REGISTRO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pNombre", SqlDbType.NVarChar).Value = Nombre;
                cmd.Parameters.AddWithValue("@pApellido", SqlDbType.NVarChar).Value = Apellido1;
                cmd.Parameters.AddWithValue("@pApellido2", SqlDbType.NVarChar).Value = Apellido2;
                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = Correo;
                cmd.Parameters.AddWithValue("@pCelular", SqlDbType.BigInt).Value = Telefono;
                cmd.Parameters.AddWithValue("@pCedula", SqlDbType.NVarChar).Value = Cedula;
                cmd.Parameters.AddWithValue("@pRol", SqlDbType.Int).Value = Rol;
                cmd.Parameters.AddWithValue("@pDireccion", SqlDbType.Int).Value = Direccion;
                cmd.Parameters.AddWithValue("@pSalt", SqlDbType.NVarChar).Value = 123; // salted[0];
                cmd.Parameters.AddWithValue("@pPasswordSalted", SqlDbType.NVarChar).Value = PasswordHashed; //salted[1]; 

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
                returnValue = Int32.Parse(returnParameter.Value.ToString());
            }
            return returnValue;

        }

        [WebMethod]
        public DataTable SelectUsuario(string correo)
        {
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("USUARIO_SELECT", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

        [WebMethod]
        public DataTable CursosMatricular(string correo)
        {
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("CURSOS_MATRICULAR", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

        [WebMethod]
        public DataTable GruposDeCurso(int idCurso, string codigoPeriodo)
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("GRUPOS_DE_CURSO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigoCurso", SqlDbType.Int).Value = idCurso;
                cmd.Parameters.AddWithValue("@pCodigoPeriodo", SqlDbType.NVarChar).Value = codigoPeriodo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

    
        [WebMethod]
        public string HorarioGrupo(int idGrupo)
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("HORARIO_GRUPO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigoGrupo", SqlDbType.Int).Value = idGrupo;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return DumpDataTable(ds.Tables[0]);
        }

        [WebMethod]
        public int RegistrarDireccion(int codigoPostal, string detalle)
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();
            int returnValue = 0;

            using (SqlCommand cmd = new SqlCommand("REGISTRAR_DIRECCION", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigo", SqlDbType.NVarChar).Value = codigoPostal;
                cmd.Parameters.AddWithValue("@pDetalles", SqlDbType.NVarChar).Value = detalle;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
                returnValue = Int32.Parse(returnParameter.Value.ToString());
            }
            return returnValue;
        }

        [WebMethod]
        public DataTable CodigosPostales()
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("CODIGOS_POSTALES", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;         
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }
    
        [WebMethod]
        public int MatricularGrupo(int codigoGrupo, string correo)
        {
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();
            int returnValue = 0;

            using (SqlCommand cmd = new SqlCommand("MATRICULAR_GRUPO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigoGrupo", SqlDbType.Int).Value = codigoGrupo;
                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
                returnValue = Int32.Parse(returnParameter.Value.ToString());
            }
            return returnValue;
        }

        [WebMethod]
        public DataTable HistorialCursos(string correo)
        {
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("HISTORIAL_MATRICULADO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

        [WebMethod]
        public DataTable HistorialGruposProfesor(string correo)
        {
            
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("HISTORIAL_GRUPOS_PROFESOR", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

        [WebMethod]
        public DataTable EstudiantesEnGrupo(int codigoGrupo)
        {
      
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("ESTUDIANTES_GRUPO", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigoGrupo", SqlDbType.Int).Value = codigoGrupo;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }

        [WebMethod]
        public int ActualizarNota(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios)
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();
            int returnValue = 0;

            using (SqlCommand cmd = new SqlCommand("ACTUALIZAR_NOTA", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCodigoGrupo", SqlDbType.Int).Value = codigoGrupo;
                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = emailEstudiante;
                cmd.Parameters.AddWithValue("@pNota", SqlDbType.Int).Value = nota;
                cmd.Parameters.AddWithValue("@pEstado", SqlDbType.NVarChar).Value = estado;
                cmd.Parameters.AddWithValue("@pComentarios", SqlDbType.NVarChar).Value = comentarios;
 

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
                returnValue = Int32.Parse(returnParameter.Value.ToString());
            }
            return returnValue;

        }

        [WebMethod]
        public int MatricularCarrera(int codigoCarrera, string correo)
        {
            //string correo = ValidateToken(token)[1];

            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();
            int returnValue = 0;

            using (SqlCommand cmd = new SqlCommand("MATRICULAR_CARRERA", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@pCarrera", SqlDbType.Int).Value = codigoCarrera;
                cmd.Parameters.AddWithValue("@pCorreo", SqlDbType.NVarChar).Value = correo;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
                returnValue = Int32.Parse(returnParameter.Value.ToString());
            }
            return returnValue;
        }

        [WebMethod]
        public DataTable ListarCarreras()
        {
            if (Conn == null)
                Conn = new SqlConnection(ConnectionString);

            DataSet ds = new DataSet();

            using (SqlCommand cmd = new SqlCommand("LISTAR_CARRERAS", Conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                Conn.Open();
                cmd.ExecuteNonQuery();
                Conn.Close();
            }
            return ds.Tables[0];
        }


        /*
        private string createToken(string rolId, string correo)
        {
            //aqui va el manejo de sesion y tokens


            return rolId + correo;
        }

        private string[] ValidateToken(string token)
        {
            //valida el token, si se encuentra en la lista y si el tiempo no ha expirado.
            // En la primera posición va -1=ERROR, 0=time out // #=Rol

            string validacion = token.Substring(0, 1);
            string correo = token.Substring(1);
            return new string[2] { validacion, correo };
        }

        
        private string[] Salt( string passwordHashed)
        {
            byte[] salt;
            new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);

            string Salt = salt.ToString();

            var pbkdf2 = new Rfc2898DeriveBytes(passwordHashed, salt, 1000);


            return new string[2]{ salt.ToString(), pbkdf2.ToString()};
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
        */
        private static string DumpDataTable(DataTable table)
        {
            string data = string.Empty;
            StringBuilder sb = new StringBuilder();

            if (null != table && null != table.Rows)
            {
                foreach (DataRow dataRow in table.Rows)
                {
                    foreach (var item in dataRow.ItemArray)
                    {
                        sb.Append(item);
                        sb.Append(" - ");
                    }
                    sb.AppendLine();
                }

                data = sb.ToString();
            }
            return data;
        }
        

    }
}