<%@ Application Language="C#" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="AppPersonalWebSite" %>


<script runat="server">
    
    void Application_AcquireRequestState(object sender, EventArgs e)
    {
        HttpContext context = ((HttpApplication)sender).Context;

        if (context.Application["myapplication.language"] != null)
        {
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(context.Application["myapplication.language"].ToString());
            Thread.CurrentThread.CurrentCulture = new CultureInfo(context.Application["myapplication.language"].ToString());
        }

    }

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        // Código que se ejecuta al iniciarse la aplicación
        //Application["myapplication.language"] = ConfigurationManager.AppSettings["AppLanguage"];

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Código que se ejecuta al cerrarse la aplicación

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando se produce un error sin procesar

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Código que se ejecuta al iniciarse una nueva sesión

    }

    void Session_End(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: el evento Session_End se produce solamente con el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer
        // o SQLServer, el evento no se produce.

    }

</script>
