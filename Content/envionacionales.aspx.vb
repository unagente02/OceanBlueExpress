
Imports System.Data.SqlClient
Public Class envionacionales
    Inherits System.Web.UI.Page

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs)
        ' Cadena de conexión a SQL Server (modifica según tu configuración)
        Dim conexionString As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"

        Using conexion As New SqlConnection(conexionString)
            Try
                conexion.Open()
                Dim query As String = "INSERT INTO Envios (NombreRemitente, NombreDestinatario, Direccion, DescripcionPaquete) VALUES (@Nombre, @Destinatario, @Direccion, @Paquete)"

                Using comando As New SqlCommand(query, conexion)
                    ' Pasando los valores de los controles a los parámetros
                    comando.Parameters.AddWithValue("@Nombre", txtNombre.Text)
                    comando.Parameters.AddWithValue("@Destinatario", txtDestinatario.Text)
                    comando.Parameters.AddWithValue("@Direccion", txtDireccion.Text)
                    comando.Parameters.AddWithValue("@Paquete", txtPaquete.Text)

                    ' Ejecutar la consulta
                    comando.ExecuteNonQuery()
                End Using

                ' Crear la factura en formato de texto
                Dim factura As String = "Factura de Envío" & vbCrLf &
                                        "------------------" & vbCrLf &
                                        "Nombre Remitente: " & txtNombre.Text & vbCrLf &
                                        "Nombre Destinatario: " & txtDestinatario.Text & vbCrLf &
                                        "Dirección: " & txtDireccion.Text & vbCrLf &
                                        "Descripción del Paquete: " & txtPaquete.Text & vbCrLf &
                                        "------------------" & vbCrLf &
                                        "Gracias por usar Ocean Blue Express."

                ' Ruta del archivo .txt (puedes cambiar la ruta si lo deseas)
                Dim filePath As String = Server.MapPath("~/facturas/Factura_" & DateTime.Now.ToString("yyyyMMdd_HHmmss") & ".txt")

                ' Escribir la factura en el archivo
                System.IO.File.WriteAllText(filePath, factura)

                ' Mostrar mensaje de éxito
                Response.Write("<script>alert('Envío registrado exitosamente. La factura ha sido generada.');</script>")

                ' Opcional: Descargar el archivo
                Response.ContentType = "application/octet-stream"
                Response.AppendHeader("Content-Disposition", "attachment; filename=Factura_" & DateTime.Now.ToString("yyyyMMdd_HHmmss") & ".txt")
                Response.TransmitFile(filePath)
                Response.End()

            Catch ex As Exception
                ' Manejo de error
                Response.Write("<script>alert('Error al registrar el envío: " & ex.Message & "');</script>")
            End Try
        End Using
    End Sub


End Class

