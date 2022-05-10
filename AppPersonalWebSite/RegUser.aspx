<%@ Page Title="<%$ Resources:Resource, RegUser.Title%>" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="RegUser.aspx.cs" Inherits="RegUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <h2><%: Title %>.</h2>
    <div>
         <asp:Table runat="server" >
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblNickUser" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" text="<%$ Resources:Resource, RegUser.lblNickUser.Text%>" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtNickName" runat="server" Width="300" MaxLength="100" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblNombre" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" text="<%$ Resources:Resource, RegUser.lblNombre.Text%>" Font-Italic="True"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtFullName" runat="server" Width="300" MaxLength="100" CssClass="InputText"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                   <asp:TableCell HorizontalAlign="Center">
                       <asp:Button ID="SQLButton" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="white" OnClick="SQLButton_Click" Text="<%$ Resources:Resource, SQLButton.Text%>" BackColor="#006666" />
                   </asp:TableCell>
             </asp:TableRow>
              <asp:TableRow>
                 <asp:TableCell HorizontalAlign="Center">
                    &nbsp
                 </asp:TableCell>
             </asp:TableRow> 
             <asp:TableRow>
                   <asp:TableCell>
                       <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#2F4F4F" Font-Italic="True"></asp:Label>
                   </asp:TableCell>
             </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell HorizontalAlign="Center">
                    <asp:GridView ID="grdResult" runat="server"></asp:GridView>
                 </asp:TableCell>
                  <asp:TableCell HorizontalAlign="Center">
                    <asp:GridView ID="grdResult2" runat="server"></asp:GridView>
                 </asp:TableCell>
             </asp:TableRow>   
             <asp:TableRow>
                   <asp:TableCell>&nbsp</asp:TableCell>
             </asp:TableRow>
         </asp:Table>
     </div>
    

</asp:Content>

