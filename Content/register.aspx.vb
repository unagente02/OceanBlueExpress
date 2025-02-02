Imports System.Data.SqlClient

Partial Public Class Register
    Inherits System.Web.UI.Page

    ' Cadena de conexión a la base de datos
    Private conexion As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"

    ' Método que se llama cuando se hace clic en el botón "Registrarse"
    Protected Sub btnRegister_Click(sender As Object, e As EventArgs)
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text

        If RegistrarUsuario(username, password) Then
            Response.Redirect("Login.aspx") ' Redirigir al inicio de sesión después del registro
        Else
            lblMessage.ForeColor = System.Drawing.Color.Red
            lblMessage.Text = "Hubo un error al registrar el usuario."
        End If
    End Sub

    ' Método para registrar al usuario en la base de datos
    Private Function RegistrarUsuario(username As String, password As String) As Boolean
        Try
            Using con As New SqlConnection(conexion)
                ' Consulta para insertar el nuevo usuario
                Dim query As String = "INSERT INTO Usuarios (Usuario, Contraseña) VALUES (@username, @password)"
                Using cmd As New SqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@username", username)
                    cmd.Parameters.AddWithValue("@password", password)

                    con.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
End Class
