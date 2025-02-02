Imports System.Data.SqlClient
Imports System.IO

Partial Public Class internacionales
    Inherits System.Web.UI.Page

    ' Cadena de conexión a la base de datos
    Private conexion As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"

    ' Método que se llama cuando se hace clic en el botón "Enviar"
    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs)
        ' Obtener los valores del formulario
        Dim nombre As String = txtNombre.Text
        Dim direccion As String = txtDireccion.Text
        Dim peso As Decimal

        ' Validar que el peso es un valor numérico
        If Not Decimal.TryParse(txtPeso.Text, peso) Then
            lblResultado.Text = "Por favor, ingresa un peso válido."
            Return
        End If

        ' Guardar el envío en la base de datos
        If GuardarEnvio(nombre, direccion, peso) Then
            ' Crear la factura en el Bloc de notas
            CrearFactura(nombre, direccion, peso)
            lblResultado.Text = "El envío ha sido registrado y la factura ha sido creada."
        Else
            lblResultado.Text = "Hubo un error al guardar el envío."
        End If
    End Sub

    ' Método para guardar el envío en la base de datos
    Private Function GuardarEnvio(nombre As String, direccion As String, peso As Decimal) As Boolean
        Try
            Using con As New SqlConnection(conexion)
                Dim query As String = "INSERT INTO EnviosInternacionales (NombreDestinatario, DireccionDestinatario, PesoPaquete) VALUES (@nombre, @direccion, @peso)"
                Using cmd As New SqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@nombre", nombre)
                    cmd.Parameters.AddWithValue("@direccion", direccion)
                    cmd.Parameters.AddWithValue("@peso", peso)

                    con.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    ' Método para crear una factura en el Bloc de notas
    Private Sub CrearFactura(nombre As String, direccion As String, peso As Decimal)
        ' Crear el nombre del archivo (puedes usar la fecha y hora para que sea único)
        Dim nombreArchivo As String = "Factura_" & DateTime.Now.ToString("yyyyMMdd_HHmmss") & ".txt"

        ' Ruta donde se guardará el archivo (puedes cambiar la ruta si lo deseas)
        Dim rutaArchivo As String = Path.Combine(Server.MapPath("~/facturas"), nombreArchivo)

        ' Crear el contenido de la factura
        Dim facturaContenido As String = "Factura de Envío" & vbCrLf &
                                         "---------------------------------" & vbCrLf &
                                         "Nombre del destinatario: " & nombre & vbCrLf &
                                         "Dirección: " & direccion & vbCrLf &
                                         "Peso del paquete: " & peso.ToString() & " kg" & vbCrLf &
                                         "---------------------------------" & vbCrLf &
                                         "Gracias por su envío."

        ' Crear y escribir en el archivo
        Using writer As New StreamWriter(rutaArchivo)
            writer.WriteLine(facturaContenido)
        End Using

        ' Abrir el archivo en el Bloc de notas
        Process.Start("notepad.exe", rutaArchivo)
    End Sub
End Class
