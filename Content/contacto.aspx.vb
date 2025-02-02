Imports System.Data.SqlClient

Partial Class contacto
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        ' Validar que los campos no estén vacíos
        If String.IsNullOrWhiteSpace(txtName.Text) OrElse String.IsNullOrWhiteSpace(txtEmail.Text) OrElse String.IsNullOrWhiteSpace(txtMessage.Text) Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Todos los campos son obligatorios.');", True)
            Exit Sub
        End If

        ' Cadena de conexión (modifica con tus credenciales)
        Dim connString As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"
        Dim query As String = "INSERT INTO Contactos (Nombre, Correo, Mensaje) VALUES (@Nombre, @Correo, @Mensaje)"

        Using conn As New SqlConnection(connString)
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Nombre", txtName.Text)
                cmd.Parameters.AddWithValue("@Correo", txtEmail.Text)
                cmd.Parameters.AddWithValue("@Mensaje", txtMessage.Text)

                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
            End Using
        End Using

        ' Mensaje de confirmación
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Mensaje enviado correctamente.');", True)

        ' Limpiar los campos después del envío
        txtName.Text = ""
        txtEmail.Text = ""
        txtMessage.Text = ""
    End Sub
End Class
