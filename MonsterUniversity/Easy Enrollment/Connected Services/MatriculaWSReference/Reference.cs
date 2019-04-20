﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Easy_Enrollment.MatriculaWSReference {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MatriculaWSReference.ServicioWebSoap")]
    public interface ServicioWebSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Login", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        string Login(string correo, string passwordhashed);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Login", ReplyAction="*")]
        System.Threading.Tasks.Task<string> LoginAsync(string correo, string passwordhashed);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistrarUsuario", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int RegistrarUsuario(string Nombre, string Apellido1, string Apellido2, string Correo, string Telefono, string Cedula, int Rol, int Direccion, string PasswordHashed);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistrarUsuario", ReplyAction="*")]
        System.Threading.Tasks.Task<int> RegistrarUsuarioAsync(string Nombre, string Apellido1, string Apellido2, string Correo, string Telefono, string Cedula, int Rol, int Direccion, string PasswordHashed);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SelectUsuario", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet SelectUsuario(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SelectUsuario", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> SelectUsuarioAsync(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CursosMatricular", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet CursosMatricular(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CursosMatricular", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> CursosMatricularAsync(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GruposDeCurso", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GruposDeCurso(int idCurso, string codigoPeriodo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GruposDeCurso", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> GruposDeCursoAsync(int idCurso, string codigoPeriodo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistrarDireccion", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int RegistrarDireccion(int codigoPostal, string detalle);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistrarDireccion", ReplyAction="*")]
        System.Threading.Tasks.Task<int> RegistrarDireccionAsync(int codigoPostal, string detalle);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CodigosPostales", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet CodigosPostales();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CodigosPostales", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> CodigosPostalesAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/MatricularGrupo", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int MatricularGrupo(int codigoGrupo, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/MatricularGrupo", ReplyAction="*")]
        System.Threading.Tasks.Task<int> MatricularGrupoAsync(int codigoGrupo, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HistorialCursos", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet HistorialCursos(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HistorialCursos", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> HistorialCursosAsync(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HistorialGruposProfesor", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet HistorialGruposProfesor(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HistorialGruposProfesor", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> HistorialGruposProfesorAsync(string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/EstudiantesEnGrupo", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet EstudiantesEnGrupo(int codigoGrupo, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/EstudiantesEnGrupo", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> EstudiantesEnGrupoAsync(int codigoGrupo, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ActualizarNota", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int ActualizarNota(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ActualizarNota", ReplyAction="*")]
        System.Threading.Tasks.Task<int> ActualizarNotaAsync(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/MatricularCarrera", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int MatricularCarrera(int codigoCarrera, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/MatricularCarrera", ReplyAction="*")]
        System.Threading.Tasks.Task<int> MatricularCarreraAsync(int codigoCarrera, string token);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListarCarreras", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet ListarCarreras();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ListarCarreras", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> ListarCarrerasAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ServicioWebSoapChannel : Easy_Enrollment.MatriculaWSReference.ServicioWebSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServicioWebSoapClient : System.ServiceModel.ClientBase<Easy_Enrollment.MatriculaWSReference.ServicioWebSoap>, Easy_Enrollment.MatriculaWSReference.ServicioWebSoap {
        
        public ServicioWebSoapClient() {
        }
        
        public ServicioWebSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServicioWebSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioWebSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioWebSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string Login(string correo, string passwordhashed) {
            return base.Channel.Login(correo, passwordhashed);
        }
        
        public System.Threading.Tasks.Task<string> LoginAsync(string correo, string passwordhashed) {
            return base.Channel.LoginAsync(correo, passwordhashed);
        }
        
        public int RegistrarUsuario(string Nombre, string Apellido1, string Apellido2, string Correo, string Telefono, string Cedula, int Rol, int Direccion, string PasswordHashed) {
            return base.Channel.RegistrarUsuario(Nombre, Apellido1, Apellido2, Correo, Telefono, Cedula, Rol, Direccion, PasswordHashed);
        }
        
        public System.Threading.Tasks.Task<int> RegistrarUsuarioAsync(string Nombre, string Apellido1, string Apellido2, string Correo, string Telefono, string Cedula, int Rol, int Direccion, string PasswordHashed) {
            return base.Channel.RegistrarUsuarioAsync(Nombre, Apellido1, Apellido2, Correo, Telefono, Cedula, Rol, Direccion, PasswordHashed);
        }
        
        public System.Data.DataSet SelectUsuario(string token) {
            return base.Channel.SelectUsuario(token);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> SelectUsuarioAsync(string token) {
            return base.Channel.SelectUsuarioAsync(token);
        }
        
        public System.Data.DataSet CursosMatricular(string token) {
            return base.Channel.CursosMatricular(token);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> CursosMatricularAsync(string token) {
            return base.Channel.CursosMatricularAsync(token);
        }
        
        public System.Data.DataSet GruposDeCurso(int idCurso, string codigoPeriodo) {
            return base.Channel.GruposDeCurso(idCurso, codigoPeriodo);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> GruposDeCursoAsync(int idCurso, string codigoPeriodo) {
            return base.Channel.GruposDeCursoAsync(idCurso, codigoPeriodo);
        }
        
        public int RegistrarDireccion(int codigoPostal, string detalle) {
            return base.Channel.RegistrarDireccion(codigoPostal, detalle);
        }
        
        public System.Threading.Tasks.Task<int> RegistrarDireccionAsync(int codigoPostal, string detalle) {
            return base.Channel.RegistrarDireccionAsync(codigoPostal, detalle);
        }
        
        public System.Data.DataSet CodigosPostales() {
            return base.Channel.CodigosPostales();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> CodigosPostalesAsync() {
            return base.Channel.CodigosPostalesAsync();
        }
        
        public int MatricularGrupo(int codigoGrupo, string token) {
            return base.Channel.MatricularGrupo(codigoGrupo, token);
        }
        
        public System.Threading.Tasks.Task<int> MatricularGrupoAsync(int codigoGrupo, string token) {
            return base.Channel.MatricularGrupoAsync(codigoGrupo, token);
        }
        
        public System.Data.DataSet HistorialCursos(string token) {
            return base.Channel.HistorialCursos(token);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> HistorialCursosAsync(string token) {
            return base.Channel.HistorialCursosAsync(token);
        }
        
        public System.Data.DataSet HistorialGruposProfesor(string token) {
            return base.Channel.HistorialGruposProfesor(token);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> HistorialGruposProfesorAsync(string token) {
            return base.Channel.HistorialGruposProfesorAsync(token);
        }
        
        public System.Data.DataSet EstudiantesEnGrupo(int codigoGrupo, string token) {
            return base.Channel.EstudiantesEnGrupo(codigoGrupo, token);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> EstudiantesEnGrupoAsync(int codigoGrupo, string token) {
            return base.Channel.EstudiantesEnGrupoAsync(codigoGrupo, token);
        }
        
        public int ActualizarNota(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios, string token) {
            return base.Channel.ActualizarNota(codigoGrupo, emailEstudiante, nota, estado, comentarios, token);
        }
        
        public System.Threading.Tasks.Task<int> ActualizarNotaAsync(int codigoGrupo, string emailEstudiante, int nota, string estado, string comentarios, string token) {
            return base.Channel.ActualizarNotaAsync(codigoGrupo, emailEstudiante, nota, estado, comentarios, token);
        }
        
        public int MatricularCarrera(int codigoCarrera, string token) {
            return base.Channel.MatricularCarrera(codigoCarrera, token);
        }
        
        public System.Threading.Tasks.Task<int> MatricularCarreraAsync(int codigoCarrera, string token) {
            return base.Channel.MatricularCarreraAsync(codigoCarrera, token);
        }
        
        public System.Data.DataSet ListarCarreras() {
            return base.Channel.ListarCarreras();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> ListarCarrerasAsync() {
            return base.Channel.ListarCarrerasAsync();
        }
    }
}
