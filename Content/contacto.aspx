<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="contacto.aspx.vb" Inherits="Currier.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="contacto.css">

     <section class="contact">
        <div class="contact-container">
            <h1>Contáctanos</h1>
            <p>¿Tienes alguna duda o necesitas más información sobre nuestros servicios? ¡Estamos para ayudarte!</p>
            
            <asp:Label ID="lblName" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input-field" Placeholder="Ingresa tu nombre" required></asp:TextBox>
            
            <asp:Label ID="lblEmail" runat="server" Text="Correo Electrónico:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" Placeholder="Ingresa tu correo electrónico" required></asp:TextBox>
            
            <asp:Label ID="lblMessage" runat="server" Text="Mensaje:"></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="input-field" TextMode="MultiLine" Rows="5" Placeholder="Escribe tu mensaje aquí..." required></asp:TextBox>
            
            <asp:Button ID="btnsubmit" runat="server" BackColor="#0066FF" ForeColor="White" Height="43px" Text="Enviar" Width="111px" />
        </div>

        <div class="contact-info">
            <h2>Información de contacto</h2>
            <p><strong>Dirección:</strong> Carretera Duarte km 5, entrada Los Laureles por el Colegio Dominicano.</p>
            <a href="https://www.google.com/maps/search/carretera+duarte+km+5+los+laureles+al+lado+del+colegio+dominicano/@19.4490824,-70.6504801,18z?entry=ttu&g_ep=EgoyMDI0MTIwMi4wIKXMDSoASAFQAw%3D%3D" 
               target="_blank" class="map-button">
                Ver en Google Maps
            </a>
            <p><strong>Teléfono:</strong> +1 (809) 555-1234</p>
            <p><strong>Correo electrónico:</strong> contacto@oceanblueexpress.com</p>
        </div>
    </section>
</asp:Content>
