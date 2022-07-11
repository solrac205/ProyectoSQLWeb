<%@ page title="<%$ Resources:Resource, PagoVisaNet.Title%>" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="PagoVisaNet, App_Web_bpceyrmh" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style runat="server" type="text/css">
       .embed-container{
                    position:relative;
                    padding-bottom:56.25%;
                    height:0;
                    overflow:hidden;
       }
       .embed-container iframe{
                    position:absolute;
                    float:inherit;
                    top:0;
                    left:0;
                    width:100%;
                    height:100%;
       }
       .iFrameContent {
                      float:inherit;
                      width:75%;
                      height:80%;
        }

    </style>
    <div class="form-group">
        <div class="form-group"">
            <h3><%: Title %>.</h3>
        </div>
        <div class="embed-container">

               <iframe id="PagoVisa" name="PagoVisa" runat="server" scrolling="auto" 
                   frameborder="1" sandbox="allow-scripts">Error</iframe>
               
        </div>
    </div>
</asp:Content>
