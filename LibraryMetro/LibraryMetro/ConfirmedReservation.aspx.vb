Public Class ConfirmedReservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim BookTitle As String, UserID As String

        BookTitle = Request.QueryString("BookTitle")

        Label1.Text = "Thank you, your book: " + BookTitle + " Will be available for you to pick up "

    End Sub

End Class