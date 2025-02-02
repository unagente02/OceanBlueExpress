<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="enviofragil1.aspx.vb" Inherits="Currier.enviofragil1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #f0f8ff; /* Fondo azul claro */
            font-family: 'Arial', sans-serif;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #6699FF; /* Azul cielo */
            color: #fff;
            text-align: center;
            border-radius: 15px 15px 0 0;
        }

        .card-header h2 {
            font-size: 36px;
            color: #003366; /* Azul oscuro */
            font-family: 'Georgia', 'Times New Roman', Times, serif;
        }

        .card-body {
            background-color: #e0f7fa; /* Azul muy suave */
            padding: 20px;
            border-radius: 0 0 15px 15px;
        }

        .form-label {
            font-weight: bold;
            color: #003366; /* Azul oscuro */
        }

        .form-control, .form-select {
            border-radius: 8px;
            border: 1px solid #007bff; /* Azul claro */
            padding: 12px;
            width: 100%;
            margin-top: 8px;
        }

        .btn-danger {
            background-color: #6699FF;
            border-color: #3366CC; /* Azul más oscuro */
            color: white;
            font-size: 18px;
            border-radius: 8px;
            padding: 10px;
        }

        .btn-danger:hover {
            background-color: #3366CC;
            border-color: #003366;
        }

        .d-grid {
            margin-top: 20px;
        }
    </style>

    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-header">
                <h2>Envío de Paquete Frágil</h2>
                <p>Garantizamos el transporte seguro y cuidadoso de tus paquetes frágiles.</p>
            </div>
            <div class="card-body">
                <asp:Panel ID="pnlEnvio" runat="server" Font-Size="Large">
                    <div class="mb-3">
                        <label for="txtNombreRemitente" class="form-label">Nombre del Remitente:</label>
                        <asp:TextBox ID="txtNombreRemitente" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtDireccionRemitente" class="form-label">Dirección del Remitente:</label>
                        <asp:TextBox ID="txtDireccionRemitente" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtNombreDestinatario" class="form-label">Nombre del Destinatario:</label>
                        <asp:TextBox ID="txtNombreDestinatario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtDireccionDestinatario" class="form-label">Dirección del Destinatario:</label>
                        <asp:TextBox ID="txtDireccionDestinatario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="ddlTipoPaquete" class="form-label">Tamaño del Paquete:</label>
                        <asp:DropDownList ID="ddlTipoPaquete" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Seleccione un tamaño</asp:ListItem>
                            <asp:ListItem Value="pequeno">Pequeño (Hasta 1 kg)</asp:ListItem>
                            <asp:ListItem Value="mediano">Mediano (Hasta 5 kg)</asp:ListItem>
                            <asp:ListItem Value="grande">Grande (Hasta 10 kg)</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripción del Contenido:</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="ddlFragilidad" class="form-label">Nivel de Fragilidad:</label>
                        <asp:DropDownList ID="ddlFragilidad" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Seleccione un nivel</asp:ListItem>
                            <asp:ListItem Value="alta">Alta</asp:ListItem>
                            <asp:ListItem Value="media">Media</asp:ListItem>
                            <asp:ListItem Value="baja">Baja</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar Frágil" CssClass="btn btn-danger btn-lg" OnClick="btnEnviar_Click" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>



