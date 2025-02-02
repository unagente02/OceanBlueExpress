<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="express.aspx.vb" Inherits="Currier.express" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    /* Estilo general de la página */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f9fc;
        margin: 0;
        padding: 0;
        color: #333;
    }

    /* Hero Section */
    .hero {
        background-color: #4c82bd;
        color: #fff;
        text-align: center;
        padding: 50px 20px;
        margin-bottom: 30px;
    }

    .hero h1 {
        font-size: 48px;
        margin: 0;
    }

    .hero p {
        font-size: 20px;
        margin: 10px 0;
    }

    /* Sección de detalles del servicio */
    .servicio-express {
        background-color: #fff;
        padding: 40px 20px;
        margin-bottom: 30px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .servicio-express h2 {
        color: #99CCFF;
        font-size: 30px;
        text-align: center;
        margin-bottom: 20px;
    }

    .servicio-express ul {
        list-style-type: none;
        padding: 0;
    }

    .servicio-express li {
        font-size: 18px;
        margin-bottom: 10px;
    }

    .servicio-express strong {
        color: #005c8c;
    }

    /* Formulario para realizar envíos */
    .envio-form {
        background-color: #fff;
        padding: 40px 20px;
        margin-bottom: 30px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .envio-form h2 {
        background-color: #99CCFF;
        color: #fff;
        padding: 10px 20px;
        font-size: 24px;
        margin-bottom: 30px;
    }

    .envio-form label {
        font-weight: bold;
        display: block;
        margin-bottom: 10px;
        font-size: 16px;
        color: #333;
    }

    .envio-form input,
    .envio-form select,
    .envio-form textarea {
        width: 100%;
        max-width: 300px;
        padding: 10px;
        margin: 5px 0 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .envio-form textarea {
        height: 100px;
    }

    .envio-form button {
        background-color: #99CCFF;
        color: white;
        font-size: 18px;
        font-weight: bold;
        padding: 15px;
        border: none;
        border-radius: 5px;
        width: 100%;
        max-width: 320px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .envio-form button:hover {
        background-color: #4c82bd;
    }
</style>

    
    <!-- Hero -->
    <section class="hero">
        <h1>Envío Express</h1>
        <p>Elige nuestro servicio más rápido para entregas inmediatas y confiables.</p>
    </section>

    <!-- Detalles del Servicio -->
    <section class="servicio-express">
        <h2>¿Por qué elegir Envío Express?</h2>
        <ul>
            <li><strong>Velocidad:</strong> Entrega en menos de 24 horas.</li>
            <li><strong>Prioridad:</strong> Tu paquete será procesado primero.</li>
            <li><strong>Seguridad:</strong> Seguimiento en tiempo real.</li>
        </ul>
    </section>

    <!-- Formulario para Realizar Envíos Express -->
    <section class="envio-form">
        <h2>Realiza tu Envío Express</h2>
        <form action="envioexpress.aspx" method="POST">
            <label for="nombre-remitente">Nombre del Remitente:</label>
            <input type="text" id="nombre-remitente" name="nombre_remitente" required><br />

            <label for="direccion-remitente">Dirección del Remitente:</label>
            <input type="text" id="direccion-remitente" name="direccion_remitente" required><br />

            <label for="nombre-destinatario">Nombre del Destinatario:</label>
            <input type="text" id="nombre-destinatario" name="nombre_destinatario" required><br />

            <label for="direccion-destinatario">Dirección del Destinatario:</label>
            <input type="text" id="direccion-destinatario" name="direccion_destinatario" required><br />

            <label for="tipo-paquete">Tamaño del Paquete:</label>
            <select id="tipo-paquete" name="tipo_paquete" required>
                <option value="pequeno">Pequeño (Hasta 1 kg)</option>
                <option value="mediano">Mediano (Hasta 5 kg)</option>
                <option value="grande">Grande (Hasta 10 kg)</option>
            </select><br />

            <label for="descripcion">Descripción del Contenido:</label>
            <textarea id="descripcion" name="descripcion" rows="4" required></textarea><br />

            <label for="prioridad">Nivel de Prioridad:</label>
            <select id="prioridad" name="prioridad" required>
                <option value="alta">Alta</option>
                <option value="media">Media</option>
                <option value="baja">Baja</option>
            </select><br />

            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Express" />
        </form>
    </section>

</asp:Content>
