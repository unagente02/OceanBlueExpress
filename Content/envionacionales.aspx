<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="envionacionales.aspx.vb" Inherits="Currier.envionacionales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

    <header>
        <h1 style="width: 696px">Ocean Blue Express</h1>
        <p>El azul de un océano, la velocidad de un envío</p>
    </header>
    <main>
        <section class="form-container">
            <h2 style="width: 889px">Registrar Envío Nacional</h2>
            <asp:Label runat="server" AssociatedControlID="txtNombre" Text="Nombre del Remitente:" Font-Bold="True" />
            <br />
            <br />
            <asp:TextBox ID="txtNombre" runat="server" CssClass="input-text" Required="true" Width="912px" Height="30px" />
            
            <br />
            <br />
            
            <asp:Label runat="server" AssociatedControlID="txtDestinatario" Text="Nombre del Destinatario:" Font-Bold="True" />
            <br />
            <asp:TextBox ID="txtDestinatario" runat="server" CssClass="input-text" Required="true" Width="914px" Height="35px" />
            
            <br />
            <br />
            
            <asp:Label runat="server" AssociatedControlID="txtDireccion" Text="Dirección de Envío:" Font-Bold="True" />
            <br />
            <asp:TextBox ID="txtDireccion" runat="server" CssClass="input-text" Required="true" Width="913px" Height="32px" />
            
            <br />
            <br />
            
            <asp:Label runat="server" AssociatedControlID="txtPaquete" Text="Descripción del Paquete:" Font-Bold="True" />
            <br />
            <asp:TextBox ID="txtPaquete" runat="server" CssClass="input-text" Required="true" Width="914px" Height="33px" />
            
            <br />
            <br />
            
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn" OnClick="btnRegistrar_Click" Width="926px" BackColor="#99CCFF" BorderStyle="Inset" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="41px" />
        </section>
    </main>
</asp:Content>
