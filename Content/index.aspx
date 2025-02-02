<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="OceanBlueExpress.index" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8" />
    <title>Factura - Ocean Blue Express</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 70%;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .header {
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
            color: #3a80c2;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
            padding: 10px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        .footer {
            text-align: center;
            font-size: 14px;
            color: #777;
            margin-top: 40px;
        }

        .total {
            font-weight: bold;
            text-align: right;
        }

        .btn-print {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #3a80c2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-print:hover {
            background-color: #3578b5;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <h1>Factura - Ocean Blue Express</h1>
            <p>Detalles del envío</p>
        </div>

        <table>
            <tr>
                <th>Nombre del Remitente</th>
                <td><%= Request.QueryString("NombreRemitente") %></td>
            </tr>
            <tr>
                <th>Dirección del Remitente</th>
                <td><%= Request.QueryString("DireccionRemitente") %></td>
            </tr>
            <tr>
                <th>Nombre del Destinatario</th>
                <td><%= Request.QueryString("NombreDestinatario") %></td>
            </tr>
            <tr>
                <th>Dirección del Destinatario</th>
                <td><%= Request.QueryString("DireccionDestinatario") %></td>
            </tr>
            <tr>
                <th>Tipo de Paquete</th>
                <td><%= Request.QueryString("TipoPaquete") %></td>
            </tr>
            <tr>
                <th>Descripción</th>
                <td><%= Request.QueryString("Descripcion") %></td>
            </tr>
            <tr>
                <th>Fragilidad</th>
                <td><%= Request.QueryString("Fragilidad") %></td>
            </tr>
        </table>

        <div class="total">
            <p><strong>Total:</strong> $0.00 (Ejemplo de total)</p>
        </div>

        <div class="footer">
            <p>&copy; 2025 Ocean Blue Express - Todos los derechos reservados</p>
        </div>

        <button class="btn-print" onclick="window.print()">Imprimir Factura</button>
    </div>

</body>
</html>
