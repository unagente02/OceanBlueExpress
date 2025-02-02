<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="seguimiento.aspx.vb" Inherits="Currier.seguimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="yo.css" />

    <!-- Encabezado -->
    <header class="tracking-header">
        <h1>Seguimiento de Paquetes</h1>
    </header>

    <!-- Contenido principal -->
    <div class="tracking-container">
        <h2 class="tracking-title">Consulta el estado de tu envío</h2>

        <div class="tracking-form">
            <label for="txtTrackingNumber" class="tracking-label">
                Número de Rastreo:
            </label>
            <asp:TextBox ID="txtTrackingNumber" runat="server" CssClass="tracking-input"></asp:TextBox>
            <asp:Button ID="btnTrack" runat="server" Text="Rastrear" CssClass="tracking-button" OnClick="btnTrack_Click" />
        </div>

        <!-- Resultados -->
        <div class="tracking-result">
            <asp:Label ID="lblResult" runat="server" CssClass="result-label"></asp:Label>
        </div>

      



        <!-- Imagen -->
        <div class="tracking-image">
            <img src="../imagenes/letrero.jpg" alt="Seguimiento de Paquetes" style="width: 936px; height: 84px; margin-bottom: 0px">
        </div>
    </div>
</asp:Content>
