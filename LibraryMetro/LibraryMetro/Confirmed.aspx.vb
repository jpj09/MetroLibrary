Public Class Confirmed
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim firstName As String = Request.QueryString("FirstName")
        Dim lastName As String = Request.QueryString("LastName")

        Label1.Text = "Thank You " + firstName + " " + lastName + " for registering an account with us, you can now "


    End Sub


End Class