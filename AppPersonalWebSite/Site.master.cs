using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

public partial class Site : System.Web.UI.MasterPage
{
    
    string ServidorDB = System.Configuration.ConfigurationManager.AppSettings.Get("DBServ");
    string NombreBaseDatos = System.Configuration.ConfigurationManager.AppSettings.Get("DBName");
    string UsuarioBase = System.Configuration.ConfigurationManager.AppSettings.Get("DBUser");
    string PasswordUsuario = System.Configuration.ConfigurationManager.AppSettings.Get("DBPWUser");
    string TipoServidor = System.Configuration.ConfigurationManager.AppSettings.Get("TypeSrv");
        
    
    protected void Page_Load(object sender, EventArgs e)
    {
        var isMobile = WebFormsFriendlyUrlResolver.IsMobileView(new HttpContextWrapper(Context));

        if (Global_Def.Init_AppViewMod == "")
        {
            Global_Def.Init_AppViewMod = isMobile ? "Mobile" : "Desktop";
        }

        if (Global_Def.Init_AppViewMod == "Desktop")
        {
            ViewSwitcher1.Visible = false;
        }
        else
        {
            ViewSwitcher1.Visible = true; 
        }

        ServidorDB = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref ServidorDB);
        NombreBaseDatos = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref NombreBaseDatos);
        UsuarioBase = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref UsuarioBase);
        PasswordUsuario = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref PasswordUsuario);
        TipoServidor = Global_Def.Decriptor.DEncryptStringToPlainCompress(ref TipoServidor);

        if (Application["myapplication.language"] != null && !IsPostBack)
        {
            DropDownList_Language.ClearSelection();
            DropDownList_Language.Items.FindByValue(Application["myapplication.language"].ToString()).Selected = true;
        }
        
        if ((ServidorDB == "") ||
            (NombreBaseDatos == "") ||
            (UsuarioBase == "") ||
            (PasswordUsuario == "") ||
            (TipoServidor == "")
            )
        {
            // *******************************************************************
            // Redireccionamiento a pagina de Configuración.
            // *******************************************************************
            Global_Def.ValidAccessConfigSQL = true;
            Response.Redirect("./ConfigDataSrv.aspx");
            // *******************************************************************
        }
        else
        {
            Global_Def.ValidAccessConfigSQL = false;
            Global_Def.ServidorAplicacion.NombreServidor =  ServidorDB;
            Global_Def.ServidorAplicacion.NombreBaseDatos = NombreBaseDatos;
            Global_Def.ServidorAplicacion.UsuarioDB = UsuarioBase;
            Global_Def.ServidorAplicacion.PasswordUserDB = PasswordUsuario;
            Global_Def.ServidorAplicacion.TipoServidorDatos = Global_Def.ServidorAplicacion.StrToTypeDataServer(TipoServidor);
            Global_Def.AppStrConnection = Global_Def.ServidorAplicacion.StrConnectionSQLWithTypeServer();

        }

    }


    protected void DropDownList_Language_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList_Language.SelectedValue)
        {
            case "en-US":
                this.SetMyNewCulture("en-US");
                break;
            case "es-GT":
                this.SetMyNewCulture("es-GT");
                break;
            default:
                break;
        }
        Response.Redirect(Request.Path);
    }

    private void SetMyNewCulture(string culture)
    {
        Application["myapplication.language"] = culture;
        
    }
}
