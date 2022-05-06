<%@ Page Title="Portal Multinegocios Sueño Propio - Guatemala" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript">
        $('.carousel').carousel({
             interval: 8000,
             pause:true,
             wrap: false
        });
        </script> 
        <style type="text/css">
            #BackContainer{position: relative; z-index:0;}
            #FrontContainer{position: fixed; z-index:1;}
        </style>
        
        <!-- ********************************************************************* -->
        <!-- Creacion de ventana flotante para realizar pago.                      -->
        <!-- ********************************************************************* -->
        <div class="form-group" id="FrontContainer" style="left:70%; top:10%">
           <asp:Table runat="server" BackColor="White" BorderStyle="Solid" >
               <asp:TableRow >
                   <asp:TableCell>
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="<%$ Resources:Resource, Flotante.Label1.Text%>" Font-Italic="True"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       <asp:Table runat="server" HorizontalAlign="Center">
                           <asp:TableRow HorizontalAlign="Center">
                               <asp:TableCell>
                                   <img height="50" width="100" src="./img/Visa.png"/>
                               </asp:TableCell>
                               <asp:TableCell>
                                   <img height="50" width="80" src="./img/Master.png"/>
                               </asp:TableCell>
                           </asp:TableRow>
                       </asp:Table>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell HorizontalAlign="Center">
                       <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="white" OnClick="Button1_Click" Text="<%$ Resources:Resource, Flotante.Button1.Text%>" BackColor="#006666" />
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>&nbsp</asp:TableCell>
               </asp:TableRow>
           </asp:Table>
        </div>
        <!-- ********************************************************************* -->

        <!-- ********************************************************************* -->
        <!-- Declaracion de Segmento Lateral y Carousel                            -->
        <!-- ********************************************************************* -->
        <div class="form-group" id="BackContainer">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell style="background-color: #2F4F4F; min-width:200px; min-height:460px; vertical-align:top;">
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell style="vertical-align:middle; text-align:center">
                                <img height="100" width="180" src="./img/LogoMultinegociosSP.jpg"/>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>                    
                                <h2 style="text-align:center; color:white"><b><asp:Literal ID="Lateral_Title" runat="server" text="<%$ Resources:Resource, Lateral.Title.Text%>" /></b></h2><br />
                                <h4 style="text-align:center; color:white">
                                    <asp:Literal ID="Lateral_body" runat="server" text="<%$ Resources:Resource, Lateral.Body.Text%>" />
                                </h4>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
                <asp:TableCell style="background-color: #2F4F4F; min-width:200px; min-height:460px; vertical-align:top;">
                    <div id="HomeCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#HomeCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#HomeCarousel" data-slide-to="1"></li>
                            <li data-target="#HomeCarousel" data-slide-to="2"></li>
                            <li data-target="#HomeCarousel" data-slide-to="3"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="./img/Carousel/1.jpg" alt="" style="min-width:200px; min-height:460px;"/>
                            </div>
                            <div class="item">
                                <img src="./img/Carousel/2.jpg" alt="" style="min-width:200px; min-height:460px;"/>
                            </div>
                            <div class="item">
                                <img src="./img/Carousel/3.jpg" alt="" style="min-width:200px; min-height:460px;"/>
                            </div>
                            <div class="item">
                                <img src="./img/Carousel/4.jpg" alt="" style="min-width:200px; min-height:460px;"/>
                            </div>
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#HomeCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#HomeCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div> 
                 </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <!-- ********************************************************************* -->
</asp:Content>