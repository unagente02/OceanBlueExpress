<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="enviofragil.aspx.vb" Inherits="Currier.enviofragil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Hero -->
    <section class="hero">
        <h1>Envío Frágil</h1>
        <p>Garantizamos el transporte seguro y cuidadoso de tus paquetes frágiles.</p>
    </section>

    <!-- Detalles del Servicio -->
    <section class="servicio-fragil">
        <h2>¿Por qué elegirnos para Envío Frágil?</h2>
        <ul>
            <li><strong>Seguridad:</strong> El manejo más cuidadoso para tus paquetes delicados.</li>
            <li><strong>Protección:</strong> Empaque especial para garantizar la seguridad del contenido.</li>
            <li><strong>Seguimiento:</strong> Control total de tu envío con nuestro sistema de seguimiento.</li>
        </ul>
    </section>

    <!-- Formulario para Realizar Envíos Frágiles -->
    <section class="envio-form">
        <h2>Realiza tu Envío Frágil</h2>
        <form action="procesar_envio_fragil.aspx" method="POST">
            <label for="nombre-remitente">Nombre del Remitente:</label>
            <input type="text" id="nombre-remitente" name="nombre_remitente" required><br>

            <label for="direccion-remitente">Dirección del Remitente:</label>
            <input type="text" id="direccion-remitente" name="direccion_remitente" required><br>

            <label for="nombre-destinatario">Nombre del Destinatario:</label>
            <input type="text" id="nombre-destinatario" name="nombre_destinatario" required><br>

            <label for="direccion-destinatario">Dirección del Destinatario:</label>
            <input type="text" id="direccion-destinatario" name="direccion_destinatario" required><br>

            <label for="tipo-paquete">Tamaño del Paquete:</label>
            <select id="tipo-paquete" name="tipo_paquete" required>
                <option value="pequeno">Pequeño (Hasta 1 kg)</option>
                <option value="mediano">Mediano (Hasta 5 kg)</option>
                <option value="grande">Grande (Hasta 10 kg)</option>
            </select><br>

            <label for="descripcion">Descripción del Contenido:</label>
            <textarea id="descripcion" name="descripcion" rows="4" required></textarea><br>

            <label for="fragilidad">Nivel de Fragilidad:</label>
            <select id="fragilidad" name="fragilidad" required>
                <option value="alta">Alta</option>
                <option value="media">Media</option>
                <option value="baja">Baja</option>
            </select><br>

            <button type="submit" class="btn">Enviar Frágil</button>
        </form>
    </section>
</asp:Content>
