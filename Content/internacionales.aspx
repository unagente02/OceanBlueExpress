<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="internacionales.aspx.vb" Inherits="Currier.internacionales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #003f63;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .btnEnviar {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #003f63;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .btnEnviar:hover {
            background-color: #005f99;
        }

        .result {
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>

    <div class="container">
        <h2 style="color: #3366FF">Envíos Internacionales</h2>
        <p><strong>Cómo recibir paquetes internacionales:</strong> Asegúrate de proporcionar la dirección correcta a quien realiza el envío.</p>
        <p><strong>Cómo enviar paquetes internacionales:</strong> Completa el formulario con los datos del destinatario y los detalles del paquete.</p>

        <asp:Panel ID="pnlEnvios" runat="server">
            <br />
            <br />
            <asp:Label runat="server" for="txtNombre" Text="Nombre del Destinatario:"></asp:Label>
            <br />
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Placeholder="Ingresa el nombre del destinatario"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" for="txtDireccion" Text="Dirección del Destinatario:"></asp:Label>
            <br />
            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" Placeholder="Ingresa la dirección"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" for="txtPeso" Text="Peso del Paquete (kg):"></asp:Label>
            <br />
            <asp:TextBox ID="txtPeso" runat="server" CssClass="form-control" Placeholder="Ingresa el peso del paquete"></asp:TextBox>
            <br />

            <br />
            <asp:Button ID="btnEnviar" runat="server" BackColor="#99CCFF" Font-Bold="True" Font-Size="Medium" Height="39px" Text="Enviar" Width="762px" />

            <div class="result">
                <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
