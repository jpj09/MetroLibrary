Imports System.Data
Imports System.Data.SqlClient

Public Class LoginPage
    Inherits System.Web.UI.Page



    Dim UserName As String, PassWord As String
    Dim UserID As String, FirstName As String

    Protected Const SqlConnectionString As String = _
        "Server=(local);" & _
        "DataBase=metro;" & _
        "Integrated Security=SSPI"

    Dim query As String = "SELECT UserName, UserPassword, FirstName, MemberNumber FROM Users WHERE UserName = @UserName AND UserPassword = @PassWord ;"




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click

        Dim a As String
        Dim b As String, c As String, d As String

        UserName = UserNameTextBox.Text
        PassWord = PasswordTextBox.Text

        Dim myCookie As New HttpCookie("UserInfo")


        Try
            Dim connection1 As New SqlConnection(SqlConnectionString)

            Dim command As SqlCommand = New SqlCommand(query, connection1)
            command.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = UserName
            command.Parameters.Add("@PassWord", SqlDbType.NVarChar).Value = PassWord

            connection1.Open()

            Dim reader As SqlDataReader = command.ExecuteReader()

            Dim count As Integer = 0

            While reader.Read()
                a = reader("UserName").ToString()
                b = reader("UserPassword").ToString()
                c = reader("FirstName").ToString()
                d = reader("MemberNumber").ToString()

                myCookie.Values("UserName") = a
                myCookie.Values("Password") = b
                myCookie.Values("FirstName") = c
                myCookie.Values("UserID") = d


                Response.Cookies.Add(myCookie)

                count = count + 1

            End While
            connection1.Close()

            If count = 1 Then
                Response.Redirect("~/Default.aspx")
            End If


        Catch

        End Try


    End Sub





End Class