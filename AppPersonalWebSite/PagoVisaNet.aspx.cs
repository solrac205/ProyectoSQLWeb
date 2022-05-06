using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PagoVisaNet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //PagoVisa.Attributes["src"] = "https://www.visaenlink.com.gt/Pago_plataforma_LinkVisaNet/PVL0200004/086ea71f39bc5d178a4c363ad9e448d24b02665a/68111b2d7762657b942926f2dc5972fe90366d7d";
        //PagoVisa.Attributes["src"] = "Contact.aspx";
        PagoVisa.Attributes["src"] = "https://admin.visaenlink.com.gt/index.php/";
        
        
    }
}