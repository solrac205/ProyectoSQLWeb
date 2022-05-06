<%@ Page Language="C#" Title="Acceso Denegado" AutoEventWireup="true" CodeFile="AccessDenied.aspx.cs" Inherits="AccessDenied" %>

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
<body>
    <form id="frmAccessDenied" runat="server">
        <div>
            <div>
                <br />
                <asp:Table ID="InputSupportUser" runat="server">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>
                                <asp:Image runat="server" ID="ImgNoAccess" ImageUrl="./img/admin.jpg"  />
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>
                                <asp:Label ID="lblUserSupportArea" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Text="Ingrese Credenciales de Usuario Support" Font-Italic="True"></asp:Label>
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
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" CssClass="ButtonEnable" />
                &nbsp;
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CssClass="ButtonEnable" />
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
