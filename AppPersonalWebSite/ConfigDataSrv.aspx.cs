using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


public partial class ConfigDataSrv : System.Web.UI.Page
{
    
    string ServidorDB = System.Configuration.ConfigurationManager.AppSettings.Get("DBServ");
    string NombreBaseDatos = System.Configuration.ConfigurationManager.AppSettings.Get("DBName");
    string UsuarioBase = System.Configuration.ConfigurationManager.AppSettings.Get("DBUser");
    string PasswordUsuario = System.Configuration.ConfigurationManager.AppSettings.Get("DBPWUser");
    string TipoServidor = System.Configuration.ConfigurationManager.AppSettings.Get("TypeSrv");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPassUserSupport.Attributes["type"] = "password";
        txtPassword.Attributes["type"] = "password";
        ImgMessage.ImageUrl = "./img/BlankIcon.jpg";

        Global_Def.DisableEnableButton(btnGuardar);
        Global_Def.DisableEnableButton(btnTestConn);
    }

    protected void Page_Init(object sender, EventArgs e)
    {
       
        if (Global_Def.ValidAccessConfigSQL == true)
        {
            txtNameSrv.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref ServidorDB);
            txtDBName.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref NombreBaseDatos);
            txtDBUsuario.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref UsuarioBase);
            txtPassword.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref PasswordUsuario);
            DrpDwnListTypeSrv.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref TipoServidor);

            btnGuardar.Enabled = false;
            btnTestConn.Enabled = true;
            Global_Def.DisableEnableButton(btnGuardar);
            Global_Def.DisableEnableButton(btnTestConn);
            

        }
        else
        {
            Response.Redirect("./AccessDenied.aspx");
        }





    }
    protected void btnTestConn_Click(object sender, EventArgs e)
    {
        btnTestConn.Enabled = false;
        Global_Def.DisableEnableButton(btnTestConn);

        if ((txtPassUserSupport.Text == string.Empty) ||
            (txtPassUserSupport.Text == "") ||
            (txtSupportUser.Text == string.Empty) ||
            (txtSupportUser.Text == ""))
        {
            ImgMessage.ImageUrl = "./img/Error.png";
            lblMessage.Text = "Los Campos Usuario y password del usuario Soporte no pueden ser vacios.";
            btnTestConn.Enabled = true;
            Global_Def.DisableEnableButton(btnTestConn);
        }
        else
        {
            if((txtSupportUser.Text == Global_Def.SupportValidate.UserSupportName) &&
               (txtPassUserSupport.Text == Global_Def.SupportValidate.UserSupportPassword))
            {
                
                Global_Def.ServidorAplicacion.NombreServidor = txtNameSrv.Text;
                Global_Def.ServidorAplicacion.NombreBaseDatos = txtDBName.Text;
                Global_Def.ServidorAplicacion.UsuarioDB = txtDBUsuario.Text;
                Global_Def.ServidorAplicacion.PasswordUserDB = txtPassword.Text;
                Global_Def.ServidorAplicacion.TipoServidorDatos = Global_Def.ServidorAplicacion.StrToTypeDataServer(DrpDwnListTypeSrv.Text);
                Global_Def.AppStrConnection = Global_Def.ServidorAplicacion.StrConnectionSQLWithTypeServer();

                
                Global_Def.TestConn.StrConnectionToTest = "";
                Global_Def.TestConn.StrConnectionToTest = Global_Def.AppStrConnection;
                Global_Def.TestConn.TipoServidorDatos = Global_Def.ServidorAplicacion.TipoServidorDatos;

                if (Global_Def.TestConn.ConnectionSucess() == false)
                {

                    lblMessage.Text = Global_Def.TestConn.ErrDescription;
                    txtNameSrv.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref ServidorDB);
                    txtDBName.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref NombreBaseDatos);
                    txtDBUsuario.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref UsuarioBase);
                    txtPassword.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref PasswordUsuario);
                    DrpDwnListTypeSrv.Text = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref TipoServidor);

                    btnTestConn.Enabled = true;
                    btnGuardar.Enabled = false;
                    Global_Def.DisableEnableButton(btnGuardar);
                    Global_Def.DisableEnableButton(btnTestConn);
                }
                else
                {

                    ImgMessage.ImageUrl = "./img/Information.jpeg";
                    lblMessage.Text = "Conexión establecida satisfactoriamente.";
                    btnGuardar.Enabled = true;
                    btnTestConn.Enabled = false;
                    Global_Def.DisableEnableButton(btnGuardar);
                    Global_Def.DisableEnableButton(btnTestConn);
                }

            }
            else
            {
                ImgMessage.ImageUrl = "./img/Error.png";
                lblMessage.Text = "Error en las Credenciales Utilizadas, Intente de Nuevo.";
                btnGuardar.Enabled = false;
                btnTestConn.Enabled = true;
                Global_Def.DisableEnableButton(btnGuardar);
                Global_Def.DisableEnableButton(btnTestConn);
            }
        }
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        Configuration MyConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/");

        btnGuardar.Enabled = false;
        Global_Def.DisableEnableButton(btnGuardar);

        ServidorDB = txtNameSrv.Text;
        NombreBaseDatos = txtDBName.Text;
        UsuarioBase = txtDBUsuario.Text;
        PasswordUsuario = txtPassword.Text;
        TipoServidor = DrpDwnListTypeSrv.Text;

        MyConfig.AppSettings.Settings["DBServ"].Value = Global_Def.Encriptor.EncryptStringToPlainCompress(ref ServidorDB);
        MyConfig.AppSettings.Settings["DBName"].Value = Global_Def.Encriptor.EncryptStringToPlainCompress(ref NombreBaseDatos);
        MyConfig.AppSettings.Settings["DBUser"].Value = Global_Def.Encriptor.EncryptStringToPlainCompress(ref UsuarioBase);
        MyConfig.AppSettings.Settings["DBPWUser"].Value = Global_Def.Encriptor.EncryptStringToPlainCompress(ref PasswordUsuario);
        MyConfig.AppSettings.Settings["TypeSrv"].Value = Global_Def.Encriptor.EncryptStringToPlainCompress(ref TipoServidor);

        MyConfig.Save(ConfigurationSaveMode.Modified);

        ServidorDB = System.Configuration.ConfigurationManager.AppSettings.Get("DBServ");
        NombreBaseDatos = System.Configuration.ConfigurationManager.AppSettings.Get("DBName");
        UsuarioBase = System.Configuration.ConfigurationManager.AppSettings.Get("DBUser");
        PasswordUsuario = System.Configuration.ConfigurationManager.AppSettings.Get("DBPWUser");
        TipoServidor = System.Configuration.ConfigurationManager.AppSettings.Get("TypeSrv");

        ImgMessage.ImageUrl = "./img/Information.jpeg";
        lblMessage.Text = "Se han guardado los cambios satisfactoriamente.";
        System.Threading.Tasks.Task.Delay(5000);
        Global_Def.ValidAccessConfigSQL = false;
        Response.Redirect("./");
    }
}