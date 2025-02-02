Imports System.Data.SqlClient

Partial Class seguimiento
    Inherits System.Web.UI.Page

    ' Conexión a la base de datos
    Private conexion As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"

    ' Este evento se ejecutará cuando el usuario haga clic en "Rastrear"
    Protected Sub btnTrack_Click(sender As Object, e As EventArgs)
        ' Obtener el número de rastreo del cuadro de texto
        Dim trackingNumber As String = txtTrackingNumber.Text.Trim()

        ' Validación de que el campo no esté vacío
        If String.IsNullOrEmpty(trackingNumber) Then
            lblResult.Text = "Por favor, ingrese un número de rastreo."
            Exit Sub
        End If

        ' Buscar el número de rastreo en la base de datos
        Dim resultado As String = BuscarRastreo(trackingNumber)

        ' Mostrar el resultado
        If Not String.IsNullOrEmpty(resultado) Then
            lblResult.Text = resultado
        Else
            lblResult.Text = "No se encontró información para este número de rastreo."
        End If
    End Sub

    ' Función para buscar el rastreo en la base de datos
    Private Function BuscarRastreo(idEnvio As String) As String
        Dim resultado As String = ""

        ' Conexión a la base de datos
        Using con As New SqlConnection(conexion)
            Try
                con.Open()

                ' Consulta SQL para obtener los datos del número de rastreo
                Dim query As String = "SELECT NombreDestinatario, DireccionDestinatario, Estado, FechaEnvio, FechaEntrega FROM RastreoEnvios WHERE IdEnvios = @IdEnvios"
                Using cmd As New SqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@IdEnvios", idEnvio)
                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            ' Si el número de rastreo existe, formateamos los datos
                            resultado = $"<b>Destinatario:</b> {reader("NombreDestinatario")}<br/>" &
                                        $"<b>Dirección:</b> {reader("DireccionDestinatario")}<br/>" &
                                        $"<b>Estado:</b> {reader("Estado")}<br/>" &
                                        $"<b>Fecha de Envío:</b> {reader("FechaEnvio")}<br/>" &
                                        $"<b>Fecha de Entrega:</b> {reader("FechaEntrega")}"
                        End If
                    End Using
                End Using
            Catch ex As Exception
                ' Si ocurre un error, mostramos el mensaje de error
                lblResult.Text = "Hubo un error al conectar con la base de datos: " & ex.Message
            Finally
                con.Close()
            End Try
        End Using

        ' Devolvemos el resultado
        Return resultado
    End Function
End Class


