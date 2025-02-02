Imports System.Data.SqlClient

Partial Public Class login
    Inherits System.Web.UI.Page

    ' Cadena de conexión a la base de datos
    Private conexion As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"

    ' Método que se llama cuando se hace clic en el botón "Iniciar Sesión"
    Protected Sub btnLogin_Click(sender As Object, e As EventArgs)
        ' Obtener los valores del formulario
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text

        ' Verificar si el usuario y la contraseña son correctos
        If VerificarCredenciales(username, password) Then
            lblMessage.ForeColor = System.Drawing.Color.Green
            lblMessage.Text = "¡Inicio de sesión exitoso!"

            ' Cambiar el texto del botón
            btnLogin.Text = "Sesión Iniciada"
            btnLogin.Enabled = False ' Deshabilitar el botón después del inicio de sesión
        Else
            lblMessage.ForeColor = System.Drawing.Color.Red
            lblMessage.Text = "Usuario o contraseña incorrectos."
        End If
    End Sub

    ' Método para verificar las credenciales del usuario en la base de datos
    Private Function VerificarCredenciales(username As String, password As String) As Boolean
        Try
            ' Crear la conexión a la base de datos
            Using con As New SqlConnection(conexion)
                ' Crear la consulta para verificar el nombre de usuario y la contraseña
                Dim query As String = "SELECT COUNT(*) FROM Usuarios WHERE Usuario = @username AND Contraseña = @password"
                Using cmd As New SqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@username", username)
                    cmd.Parameters.AddWithValue("@password", password)

                    ' Abrir la conexión y ejecutar la consulta
                    con.Open()
                    Dim result As Integer = Convert.ToInt32(cmd.ExecuteScalar())

                    ' Si el resultado es mayor que 0, las credenciales son correctas
                    If result > 0 Then
                        Return True
                    Else
                        Return False
                    End If
                End Using
            End Using
        Catch ex As Exception
            ' Manejo de errores en caso de problemas con la base de datos
            lblMessage.Text = "Error al verificar las credenciales: " & ex.Message
            Return False
        End Try
    End Function
End Class
