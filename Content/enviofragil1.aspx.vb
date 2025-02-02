Imports System.Data.SqlClient

Partial Class enviofragil1
    Inherits System.Web.UI.Page

    Protected Sub btnEnviar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnEnviar.Click
        ' Cadena de conexión a SQL Server (modifica con tus datos)
        Dim connString As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"
        Dim query As String = "INSERT INTO EnviosFragiles (NombreRemitente, DireccionRemitente, NombreDestinatario, DireccionDestinatario, TipoPaquete, Descripcion, Fragilidad) VALUES (@NombreRemitente, @DireccionRemitente, @NombreDestinatario, @DireccionDestinatario, @TipoPaquete, @Descripcion, @Fragilidad)"

        Try
            Using conn As New SqlConnection(connString)
                Using cmd As New SqlCommand(query, conn)
                    ' Asigna los valores de los controles de ASP.NET
                    cmd.Parameters.AddWithValue("@NombreRemitente", txtNombreRemitente.Text)
                    cmd.Parameters.AddWithValue("@DireccionRemitente", txtDireccionRemitente.Text)
                    cmd.Parameters.AddWithValue("@NombreDestinatario", txtNombreDestinatario.Text)
                    cmd.Parameters.AddWithValue("@DireccionDestinatario", txtDireccionDestinatario.Text)
                    cmd.Parameters.AddWithValue("@TipoPaquete", ddlTipoPaquete.SelectedValue)
                    cmd.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text)
                    cmd.Parameters.AddWithValue("@Fragilidad", ddlFragilidad.SelectedValue)

                    ' Ejecutar el query
                    conn.Open()
                    cmd.ExecuteNonQuery()
                    conn.Close()
                End Using
            End Using

            ' Crear el contenido de la factura
            Dim facturaContenido As String = "Factura de Envío" & vbCrLf &
            "---------------------------------" & vbCrLf &
            "Remitente: " & txtNombreRemitente.Text & vbCrLf &
            "Dirección Remitente: " & txtDireccionRemitente.Text & vbCrLf &
            "Destinatario: " & txtNombreDestinatario.Text & vbCrLf &
            "Dirección Destinatario: " & txtDireccionDestinatario.Text & vbCrLf &
            "Tipo de Paquete: " & ddlTipoPaquete.SelectedValue & vbCrLf &
            "Descripción: " & txtDescripcion.Text & vbCrLf &
            "Fragilidad: " & ddlFragilidad.SelectedValue & vbCrLf &
            "---------------------------------" & vbCrLf &
            "Gracias por elegir Ocean Blue Express!"

            ' Guardar el archivo de la factura
            Dim filePath As String = Server.MapPath("~/facturas/Factura_" & Guid.NewGuid().ToString() & ".txt")
            System.IO.File.WriteAllText(filePath, facturaContenido)

            ' Descargar el archivo de la factura
            Response.ContentType = "text/plain"
            Response.AppendHeader("Content-Disposition", "attachment; filename=Factura_" & Guid.NewGuid().ToString() & ".txt")
            Response.TransmitFile(filePath)
            Response.End()

            ' Mensaje de éxito
            Response.Write("<script>alert('Envío registrado y factura generada.');</script>")
        Catch ex As Exception
            ' Manejo de errores
            Response.Write("<script>alert('Error: " & ex.Message & "');</script>")
        End Try
    End Sub

    Protected Sub txtNombreRemitente_TextChanged(sender As Object, e As EventArgs) Handles txtNombreRemitente.TextChanged

    End Sub
End Class
