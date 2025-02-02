Imports System.Data.SqlClient

Partial Class enviourgente
    Inherits System.Web.UI.Page

    Protected Sub btnEnviarUrgente_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnEnviarUrgente.Click
        If Page.IsValid Then ' Verifica que todos los validadores se cumplan
            Dim connString As String = "Server=(localdb)\Gavino;Database=oceanblueDB;Integrated Security=True;"
            Dim query As String = "INSERT INTO EnviosUrgentes (NombreRemitente, DireccionRemitente, NombreDestinatario, DireccionDestinatario, TipoPaquete, Descripcion, Urgencia) VALUES (@NombreRemitente, @DireccionRemitente, @NombreDestinatario, @DireccionDestinatario, @TipoPaquete, @Descripcion, @Urgencia)"

            Try
                Using conn As New SqlConnection(connString)
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@NombreRemitente", txtNombreRemitente.Text)
                        cmd.Parameters.AddWithValue("@DireccionRemitente", txtDireccionRemitente.Text)
                        cmd.Parameters.AddWithValue("@NombreDestinatario", txtNombreDestinatario.Text)
                        cmd.Parameters.AddWithValue("@DireccionDestinatario", txtDireccionDestinatario.Text)
                        cmd.Parameters.AddWithValue("@TipoPaquete", ddlTipoPaquete.SelectedValue)
                        cmd.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text)
                        cmd.Parameters.AddWithValue("@Urgencia", ddlUrgencia.SelectedValue)

                        conn.Open()
                        cmd.ExecuteNonQuery()
                        conn.Close()
                    End Using
                End Using

                ' Mensaje de éxito y redirección
                Response.Write("<script>alert('Envío urgente registrado correctamente'); window.location='index.aspx';</script>")
            Catch ex As Exception
                Response.Write("<script>alert('Error: " & ex.Message & "');</script>")
            End Try
        End If
    End Sub
End Class
