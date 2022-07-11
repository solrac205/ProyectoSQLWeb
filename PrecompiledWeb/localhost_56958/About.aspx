<%@ page title="<%$ Resources:Resource, Abaut.Title%>" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="About, App_Web_bpceyrmh" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>
        <asp:Literal ID="About_body" runat="server" text="<%$ Resources:Resource, Abaut.Descripcion.Text%>" />
    </h3>
    <h2>
        <asp:Literal ID="About_footer" runat="server" text="<%$ Resources:Resource, Abaut.Footer.Text%>" />
    </h2>
</asp:Content>
