<%@ page title="<%$ Resources:Resource, DataSrv.Title%>" language="C#" autoeventwireup="true" inherits="ConfigDataSrv, App_Web_lstu40hg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="author" content="Carlos F. Ramírez Abdalla"/>
<meta name="generator" content="Visual Estudio Community 2019"/>
<meta name="description" content="Web Site Multinegocios Sueño Propio"/>


    <title><%: Page.Title %></title>

    <link rel="stylesheet" href="~/Content/CRAneoStylesWeb.css" media="all" />
    
</head>
<body style="background-color:white;">
    <form id="frmConfigDataServer" runat="server">
        <div>
            <div>
            <asp:Table runat="server" >
                <asp:TableRow>
                    <asp:TableCell style="background-color: transparent; vertical-align:middle; text-align:center;">
                            <img height="100" width="180" src="./img/LogoMultinegociosSP.jpg"/>
                    </asp:TableCell>
                    <asp:TableCell style="background-color: transparent; vertical-align:middle; text-align:center;">
                        <h2 style="text-align:center; color:#2F4F4F;"><b> Configuración de Servidor de <br /> Base De Datos </b></h2>
                    </asp:TableCell>
                    <asp:TableCell style="                            background-color: transparent;
                            vertical-align: middle;
                            text-align: center;">
                            <img height="100" width="150" src="./img/baseDatos.png"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
                
            <div>
            <hr />
            <asp:Table runat="server" >
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblNombreSrv" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Nombre de Servidor:" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtNameSrv" runat="server" Width="300" MaxLength="100" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblDBName" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Base de Datos:" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDBName" runat="server" Width="300" MaxLength="100" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblUsuario" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Usuario:" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDBUsuario" runat="server" Width="200" MaxLength="50" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Password:" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPassword" runat="server" Width="200" MaxLength="50" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblTipoServidor" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Tipo de Servidor:" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DrpDwnListTypeSrv" runat="server" 
                                    AutoPostBack="true" CssClass="dropdownConf" Font-Bold="True" Font-Italic="False">
                                    <asp:ListItem Value="NoDefinido">No Definido</asp:ListItem>
                                    <asp:ListItem Value="SQLServer">SQLServer</asp:ListItem>
                                    <asp:ListItem Value="PostgresSQL">PostgresSQL</asp:ListItem>
                                    <asp:ListItem Value="MySQL">MySQL</asp:ListItem>
                                </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
            <div>
                <br />
                <asp:Table ID="InputSupportUser" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>
                            <asp:Label ID="lblUserSupportArea" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Credenciales de Almacenamiento" Font-Italic="True"></asp:Label>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label ID="lblSupportUser" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Usuario de Soporte:" Font-Italic="True"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txtSupportUser" runat="server" Width="200" MaxLength="50" CssClass="InputText"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label ID="lblSupportUserPW" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Password:" Font-Italic="True"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txtPassUserSupport" runat="server" Width="200" MaxLength="50" CssClass="InputText"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div>
                <br />
                <br />
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="ButtonEnable" />
                &nbsp;
                <asp:Button ID="btnTestConn" runat="server" Text="Test Conexión" OnClick="btnTestConn_Click" CssClass="ButtonEnable" />
                <br />
                <br />
                <asp:Image runat="server" ID="ImgMessage" ImageUrl="./img/BlankIcon.jpg" CssClass="ImgMessageIcon" />
                <asp:Label ID="lblMessage" runat="server" Text="&nbsp" CssClass="MessageLabel"></asp:Label>
            </div>

            

            <div class="container body-content">
                <hr />
                <footer>
                    <p>Copyright &copy; <%: DateTime.Now.Year %> Multinegocios Sueño Propio  - C.R.A.</p>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
