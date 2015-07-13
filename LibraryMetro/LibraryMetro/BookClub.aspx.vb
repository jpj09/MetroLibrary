Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class BookClub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Const SqlConnectionString As String = _
        "Server=(local);" & _
        "DataBase=metro;" & _
        "Integrated Security=SSPI"

        Dim queryViewBookClubMember As String = " SELECT DISTINCT FirstName, LastName, Comments FROM Users WHERE BookClubMember = 1 ;"

        Dim connection As New SqlConnection(SqlConnectionString)
        Dim cmd As New SqlCommand(queryViewBookClubMember, connection)

        Dim sda As New SqlDataAdapter(cmd)
        Dim ds As New DataSet("FirstName, LastName, Comments")
        sda.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()




    End Sub

End Class