Partial Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Se puede cargar la información pasada desde el formulario de envío
        If Not IsPostBack Then
            ' Aquí no es necesario hacer nada, solo se debe asegurar que los datos
            ' lleguen al index.aspx a través de QueryString u otro método.
        End If
    End Sub
End Class
