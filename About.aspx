<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Currier.About" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
    Acerca de Nosotros
</asp:Content>


<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Content/estilo.css">

    <header class="hero">
        <div class="hero-content">
            <h1>Bienvenido a Ocean Blue Express</h1>
            <p>Tu socio confiable para envíos rápidos, seguros y eficientes.</p>
        </div>
        <div class="hero-image">
            <img src="imagenes/letrero.jpg" alt="Logística global" style="width: 874px; height: 204px">
        </div>
    </header>

    <!-- Sección Nosotros -->
    <section class="nosotros" id="nosotros">
        <div class="section-content">
            <h2>¿Quiénes Somos?</h2>
            <p>En Ocean Blue Express, estamos comprometidos con brindar soluciones logísticas innovadoras, diseñadas para satisfacer las necesidades de nuestros clientes en cualquier lugar del mundo.</p>
        </div>
        <div class="stats">
            <div class="stat">
                <h3>+10 años</h3>
                <p>De experiencia en logística global.</p>
            </div>
            <div class="stat">
                <h3>98%</h3>
                <p>De satisfacción de nuestros clientes.</p>
            </div>
            <div class="stat">
                <h3>24/7</h3>
                <p>Soporte dedicado para nuestros clientes.</p>
            </div>
        </div>
    </section>
</asp:Content>
