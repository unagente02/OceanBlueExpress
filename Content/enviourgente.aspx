<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="enviourgente.aspx.vb" Inherits="Currier.enviourgente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        /* Estilos generales */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 100%;
            max-width: 600px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #508ac8;
            color: #fff;
            padding: 30px;
            text-align: center;
        }

        .card-header h2 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
        }

        .card-header p {
            font-size: 16px;
            margin-top: 10px;
        }

        .card-body {
            padding: 30px;
            background-color: #fff;
            border-top: 1px solid #f1f1f1;
        }

        .form-label {
            font-size: 14px;
            color: #333;
        }

        .form-control, .form-select {
            border-radius: 5px;
            padding: 10px;
            border: 1px solid #ccc;
            width: 100%;
            font-size: 16px;
        }

        .form-control:focus, .form-select:focus {
            border-color: #f39c12;
            outline: none;
        }

        .btn-warning {
            background-color: #508ac8;
            border: none;
            color: #fff;
            padding: 15px;
            width: 100%;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-warning:hover {
            background-color: #e67e22;
        }

        .text-danger {
            font-size: 12px;
            color: #e74c3c;
            display: block;
            margin-top: 5px;
        }

        .d-grid {
            margin-top: 20px;
        }

        /* Estilo para las etiquetas y los campos de formulario */
        .mb-3 {
            margin-bottom: 20px;
        }
    </style>



    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-header bg-warning text-dark text-center">
                <h2>Envío Urgente</h2>
                <p>Envíos rápidos y seguros en el menor tiempo posible.</p>
            </div>
            <div class="card-body">
                <asp:Panel ID="pnlEnvioUrgente" runat="server">
                    <div class="mb-3">
                        <label for="txtNombreRemitente" class="form-label">Nombre del Remitente:</label>
                        <asp:TextBox ID="txtNombreRemitente" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreRemitente" runat="server" ControlToValidate="txtNombreRemitente"
                            ErrorMessage="Este campo es obligatorio" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="txtDireccionRemitente" class="form-label">Dirección del Remitente:</label>
                        <asp:TextBox ID="txtDireccionRemitente" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccionRemitente" runat="server" ControlToValidate="txtDireccionRemitente"
                            ErrorMessage="Este campo es obligatorio" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="txtNombreDestinatario" class="form-label">Nombre del Destinatario:</label>
                        <asp:TextBox ID="txtNombreDestinatario" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreDestinatario" runat="server" ControlToValidate="txtNombreDestinatario"
                            ErrorMessage="Este campo es obligatorio" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="txtDireccionDestinatario" class="form-label">Dirección del Destinatario:</label>
                        <asp:TextBox ID="txtDireccionDestinatario" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccionDestinatario" runat="server" ControlToValidate="txtDireccionDestinatario"
                            ErrorMessage="Este campo es obligatorio" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="ddlTipoPaquete" class="form-label">Tamaño del Paquete:</label>
                        <asp:DropDownList ID="ddlTipoPaquete" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Seleccione un tamaño</asp:ListItem>
                            <asp:ListItem Value="pequeno">Pequeño (Hasta 1 kg)</asp:ListItem>
                            <asp:ListItem Value="mediano">Mediano (Hasta 5 kg)</asp:ListItem>
                            <asp:ListItem Value="grande">Grande (Hasta 10 kg)</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvTipoPaquete" runat="server" ControlToValidate="ddlTipoPaquete"
                            InitialValue="" ErrorMessage="Debe seleccionar un tamaño" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripción del Contenido:</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion"
                            ErrorMessage="Este campo es obligatorio" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="ddlUrgencia" class="form-label">Nivel de Urgencia:</label>
                        <asp:DropDownList ID="ddlUrgencia" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Seleccione un nivel</asp:ListItem>
                            <asp:ListItem Value="express">Express (Entrega en 24 horas)</asp:ListItem>
                            <asp:ListItem Value="prioritario">Prioritario (Entrega en 48 horas)</asp:ListItem>
                            <asp:ListItem Value="estandar">Estándar (Entrega en 72 horas)</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvUrgencia" runat="server" ControlToValidate="ddlUrgencia"
                            InitialValue="" ErrorMessage="Debe seleccionar un nivel de urgencia" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="btnEnviarUrgente" runat="server" Text="Enviar Urgente" CssClass="btn btn-warning btn-lg" OnClick="btnEnviarUrgente_Click" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>


</asp:Content>
