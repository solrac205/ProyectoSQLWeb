using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccessDenied : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPassUserSupport.Attributes["type"] = "password";
        ImgMessage.ImageUrl = "./img/BlankIcon.jpg";
    }

    protected void btnAceptar_Click(object sender, EventArgs e) 
    {

        if ((txtPassUserSupport.Text == string.Empty) ||
            (txtPassUserSupport.Text == "") ||
            (txtSupportUser.Text == string.Empty) ||
            (txtSupportUser.Text == ""))
        {
            Global_Def.ValidAccessConfigSQL = false;
            ImgMessage.ImageUrl = "./img/Error.png";
            lblMessage.Text = "Los Campos Usuario y password del usuario Soporte no pueden ser vacios.";
        }
        else
        {

            if ((txtSupportUser.Text == Global_Def.SupportValidate.UserSupportName) &&
               (txtPassUserSupport.Text == Global_Def.SupportValidate.UserSupportPassword))
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
                ImgMessage.ImageUrl = "./img/Error.png";
                lblMessage.Text = "Error en las Credenciales Utilizadas, Intente de Nuevo.";
            }

        }

        

    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {

        Global_Def.ValidAccessConfigSQL = false;
        Response.Redirect("./");

    }

}