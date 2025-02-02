<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="servicios.aspx.vb" Inherits="Currier.servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="servicio.css"> <!-- Enlaza tu archivo CSS -->
 
    <section class="hero">
        <h1>Nuestros Servicios</h1>
        <p>Ofrecemos una variedad de servicios de envío para satisfacer todas tus necesidades.</p>
    </section>

    <!-- Servicios -->
    <section class="services">
        <div class="service" style="background-color: #99CCFF">
            <img src="/imagenes/anja.jpg" alt="Envío Nacional">
            <h2>Envío Nacional</h2>
            <p>Entrega rápida y segura en todo el territorio nacional. Garantiza la llegada de tus paquetes a cualquier ciudad.</p>
            <a href="https://localhost:44340/Content/envionacionales" class="btn">Más detalles</a>
        </div>
        <div class="service" style="background-color: #99CCFF">
            <img src="/imagenes/1.jpeg" alt="Envío Internacional">
            <h2>Envío Internacional</h2>
            <p>Envía tus paquetes a cualquier parte del mundo con nuestro servicio internacional confiable y rápido.</p>
            <a href="https://localhost:44340/Content/internacionales" class="btn">Más detalles</a>
        </div>
        <div class="service" style="background-color: #99CCFF">
            <img src="/imagenes/2.jpg" alt="Seguimiento de Paquetes">
            <h2>Seguimiento de Paquetes</h2>
            <p>Rastrea el estado de tu envío en tiempo real con nuestra plataforma de seguimiento fácil de usar.</p>
            <a href="https://localhost:44340/Content/seguimiento" class="btn">Más detalles</a>
        </div>
        <div class="service">
            <img src="/imagenes/3.jpg" alt="Envio Express">
            <h2>Envío Express</h2>
            <p>Si necesitas que tu paquete llegue rápido, nuestro servicio Express es la solución perfecta para ti.</p>
            <a href="https://localhost:44340/Content/express" class="btn">Más detalles</a>
        </div>
        <div class="service">
            <img src="/imagenes/4.jpeg" alt="Envío Frágil">
            <h2>Envío Frágil</h2>
            <p>Especializado en el manejo de productos frágiles, garantizando su seguridad durante el trayecto.</p>
            <a href="https://localhost:44340/Content/enviofragil1" class="btn">Más detalles</a>
        </div>
        <div class="service">
            <img src="/imagenes/5.jpeg" alt="Envío Urgente">
            <h2>Envío Urgente</h2>
            <p>Servicio prioritario para entregas urgentes en menos de 24 horas.</p>
            <a href="https://localhost:44340/Content/enviourgente" class="btn">Más detalles</a>
        </div>
        <div class="video-container">
            <video width="560" height="315" controls>
                <source src="../imagenes/anuncio1.mp4" type="video/mp4">
                Tu navegador no soporta este formato de video.
            </video>
        </div>
    </section>
</asp:Content>
