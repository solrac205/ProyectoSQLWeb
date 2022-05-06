using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace SQLDataProcessAndObjects
{
    public enum TypeDataServer
    {
        SQLServer,
        PostgresSQL,
        MySQL,
        NoDefinido
    };
    
    public class DBServer
    {
        private string NameServerDB;
        private string DBName;
        private string DBUser;
        private string DBPassword;
        private TypeDataServer TipoServidor;

        public DBServer()
        {
            NameServerDB = "";
            DBName = "";
            DBUser = "";
            DBPassword = "";
            TipoServidor = TypeDataServer.NoDefinido;
        }
        public string NombreServidor
        {
            set
            {
                NameServerDB = value;
            }
            get
            {
                return NameServerDB;
            }
        }
        public string NombreBaseDatos
        {
            set
            {
                DBName = value;
            }
            get
            {
                return DBName;
            }
        }
        public string UsuarioDB
        {
            set
            {
                DBUser = value;
            }
            get
            {
                return DBUser;
            }
        }
        public string PasswordUserDB
        {
            set
            {
                DBPassword = value;
            }
            get
            {
                return DBPassword;
            }
        }
        public TypeDataServer TipoServidorDatos
        {
            set
            {
                TipoServidor = value;
            }
            get
            {
                return TipoServidor;
            }
        }
        public string StrConnectionSQLWithTypeServer()
        {
            string ValorRetorno = "";

            switch (TipoServidor)
            {
                case TypeDataServer.NoDefinido:
                    ValorRetorno = "";
                    break;
                case TypeDataServer.SQLServer:
                    ValorRetorno = "Data Source=" + NameServerDB + "; " +
                                   "Initial Catalog=" + DBName + "; User Id=" + DBUser +
                                   "; Password=" + DBPassword + "; Connect Timeout=15;";
                    break;
                case TypeDataServer.PostgresSQL:
                    ValorRetorno = "";
                    break;
                case TypeDataServer.MySQL:
                    ValorRetorno = "Server=" + NameServerDB + ";Database=" + DBName + ";Port=3306;Uid=" + DBUser + ";Pwd=" + DBPassword + ";";
                    break;
            }
            return ValorRetorno;
        }
        public TypeDataServer StrToTypeDataServer(string ValorConvertir)
        {
            TypeDataServer Respuesta = TypeDataServer.NoDefinido;

            switch (ValorConvertir)
            {
                case "SQLServer":
                    Respuesta = TypeDataServer.SQLServer;
                    break;
                case "PostgresSQL":
                    Respuesta = TypeDataServer.PostgresSQL;
                    break;
                case "MySQL":
                    Respuesta = TypeDataServer.MySQL;
                    break;
            }
            return Respuesta;
        }

    }
    public class TestConnectionSQLDB
    {
        private string ConnectionStrTest;
        private string ErrorDesc;
        private TypeDataServer typeDataServer;

        public TestConnectionSQLDB()
        {
            ConnectionStrTest = string.Empty;
            ErrorDesc = string.Empty;
        }
        public string StrConnectionToTest
        {
            get
            {
                return ConnectionStrTest;
            }
            set
            {
                ConnectionStrTest = value;
            }
        }
        public string ErrDescription
        {
            get
            {
                return ErrorDesc;
            }
        }

        public TypeDataServer TipoServidorDatos
        {
            set
            {
                typeDataServer = value;
            }
            get
            {
                return typeDataServer;
            }
        }

        public Boolean ConnectionSucess()
        {
            bool ResultadoConexion;


            if ((ConnectionStrTest == "") ||
                (ConnectionStrTest == string.Empty))
            {
                ErrorDesc = "Cadena de conexión incorrecta, no puede ser vacia.";
                return false;
            }

            switch (typeDataServer)
            {
                case TypeDataServer.SQLServer:
                    SqlConnection TestConexion1 = new SqlConnection();
                    try
                    {
                        TestConexion1.ConnectionString = ConnectionStrTest;
                        TestConexion1.Open();
                    }
                    catch (Exception Err)
                    {
                        ErrorDesc = Err.Message;
                        //return false;
                    }

                    if (TestConexion1.State == System.Data.ConnectionState.Open)
                    {
                        ErrorDesc = "";
                        ResultadoConexion = true;
                    }
                    else
                    {
                        ErrorDesc = "No se pudo establecer conexión a Servidor de Datos";
                        ResultadoConexion = false;
                    }
                    break;
                case TypeDataServer.MySQL:
                    MySqlConnection TestConexion2 = new MySqlConnection();
                    try
                    {
                        TestConexion2.ConnectionString = ConnectionStrTest;
                        TestConexion2.Open();
                    }
                    catch (Exception Err)
                    {
                        ErrorDesc = Err.Message;
                        //return false;
                    }

                    if (TestConexion2.State == System.Data.ConnectionState.Open)
                    {
                        ErrorDesc = "";
                        ResultadoConexion = true;
                    }
                    else
                    {
                        ErrorDesc = "No se pudo establecer conexión a Servidor de Datos";
                        ResultadoConexion = false;
                    }
                    break;
                default:
                    ErrorDesc = "No se pudo establecer conexión a Servidor de Datos";
                    ResultadoConexion = false;
                    break;
            }
            
            
            return ResultadoConexion;
        }
    }
    public class MySQLFunction
    {
        MySqlConnection Conexion = new MySqlConnection();
        private string ConnectionStrTest;
        private string ErrorDesc;

        public string StrConnectionToTest
        {
            get
            {
                return ConnectionStrTest;
            }
            set
            {
                ConnectionStrTest = value;
            }
        }

        public string ErrDescription
        {
            get
            {
                return ErrorDesc;
            }
        }

        public MySQLFunction()
        {
            ConnectionStrTest = string.Empty;
            ErrorDesc = string.Empty;
        }



        public string GetSQLValue(string SQLScript)
        {
            if ((ConnectionStrTest == "") ||
               (ConnectionStrTest == string.Empty))
            {
                ErrorDesc = "Cadena de conexión incorrecta, no puede ser vacia.";
                return string.Empty;
            }

            try
            {
                Conexion.ConnectionString = ConnectionStrTest;
                Conexion.Open();
            }
            catch (Exception Err)
            {
                ErrorDesc = Err.Message;
                return string.Empty;
            }

            if (Conexion.State == System.Data.ConnectionState.Open)
            {
                ErrorDesc = "";
                MySqlCommand mySqlCommand = new MySqlCommand();
                mySqlCommand.Connection = Conexion;
                mySqlCommand.CommandType = System.Data.CommandType.Text;
                mySqlCommand.CommandText = SQLScript;
                return mySqlCommand.ExecuteScalar().ToString();
                
            }
            else
            {
                ErrorDesc = $"No se pudo establecer conexión a Servidor de Datos: {Conexion.State}";
                return string.Empty;
            }

        }
    }
}
