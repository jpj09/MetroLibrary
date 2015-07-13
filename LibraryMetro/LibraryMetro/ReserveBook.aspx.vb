Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class ReserveBook
    Inherits System.Web.UI.Page

    Dim BookTitle As String, BookAuthor As String
    Dim DateReserved As Date, DateOwed As Date
    Dim BookID As String
    Dim UserID As String

    Dim DateReserved1 As String
    Dim DateOwed1 As String

    Protected Const SqlConnectionString As String = _
        "Server=(local);" & _
        "DataBase=metro;" & _
        "Integrated Security=SSPI"

    Dim sqlStatement As String = "INSERT INTO Reservations (BookID,UserID,DateBegin,DateOwedReturn) VALUES(@BookID,@UserID,@DateBegin,@DateOwedReturn); "

    Dim querySearchBook As String = "SELECT BookID FROM Books WHERE Title = @Title; "




    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        DateReserved = Calendar1.SelectedDate
        DateReserved1 = Format(DateReserved, "yyyy-MM-dd")
        DatereservedTextBox.Text = DateReserved1

        DateOwed = DateReserved.AddDays(7)
        DateOwed1 = Format(DateOwed, "yyyy-MM-dd")
        OwedTextBox.Text = DateOwed1


    End Sub

    Protected Sub BookTitleTextBox_TextChanged(sender As Object, e As EventArgs) Handles BookTitleTextBox.TextChanged
        BookTitle = BookTitleTextBox.Text


    End Sub

    Sub ReseveBookButton_Click(sender As Object, e As EventArgs) Handles ReseveBookButton.Click

        Try
            If Request.Cookies("UserInfo") Is Nothing Then
                MsgBox("You need to be Login To Reserve Book")

            Else
                UserID = Request.Cookies("UserInfo")("UserID").ToString()

                BookTitle = BookTitleTextBox.Text

                Dim connection1 As New SqlConnection(SqlConnectionString)
                Dim command As SqlCommand = New SqlCommand(querySearchBook, connection1)
                command.Parameters.Add("@Title", SqlDbType.NVarChar).Value = BookTitle

                connection1.Open()

                Dim reader As SqlDataReader = command.ExecuteReader()
                While reader.Read()
                    BookID = reader("BookID").ToString()

                End While
                connection1.Close()


                Dim connection As New SqlConnection(SqlConnectionString)
                Dim cmd As New SqlCommand(sqlStatement, connection)
                cmd.Parameters.AddWithValue("@BookID", BookID)
                cmd.Parameters.AddWithValue("@UserID ", UserID)

                cmd.Parameters.Add("@DateOwedReturn", SqlDbType.NVarChar).Value = OwedTextBox.Text
                cmd.Parameters.Add("@DateBegin", SqlDbType.NVarChar).Value = DatereservedTextBox.Text

                connection.Open()
                cmd.ExecuteNonQuery()
                connection.Close()

                Response.Redirect("~/ConfirmedReservation.aspx?Booktitle=" + BookTitle + "&UserID=" + UserID + "&Date=" + DateReserved.ToString(), False)
                'Catch exc As Exception
                '    ' 
                '    MsgBox(exc.Message, MsgBoxStyle.OkOnly, "Connection failed.")

            End If

        Catch
            MsgBox("ERROR")
        End Try

    End Sub

    Protected Sub DatereservedTextBox_TextChanged(sender As Object, e As EventArgs) Handles DatereservedTextBox.TextChanged

    End Sub



End Class