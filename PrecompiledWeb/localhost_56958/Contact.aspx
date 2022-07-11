<%@ page title="<%$ Resources:Resource, Contacto.Title%>" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Contact, App_Web_bpceyrmh" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        a:link {color: #333399}
        a:visited {color: #333399}
    </style>

    <h2><%: Title %>.</h2>
    <h3>
        <asp:Literal ID="Contact_body" runat="server" text="<%$ Resources:Resource, Contacto.Body.Text%>" />
    </h3>
    <asp:Table runat="server" >
        <asp:TableRow >
            <asp:TableCell class="ContactData">
                <img class="ImgLogo" height="32" width="32" src="./img/WhatsApp.jpg"/> <b> WhatsApp: +502 5755-1051</b>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell class="ContactData">
                <img class="ImgLogo" height="26" width="32" src="./img/email.jpg"/> <b> <a href="mailto:mensajerodenegocios@gmail.com?Subject=Consulta%20Web">mensajerodenegocios@gmail.com</a></b>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>





</asp:Content>