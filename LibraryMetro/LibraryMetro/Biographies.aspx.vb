Imports System.Data.Sql
Imports System.Data.SqlClient


Public Class Biographies
    Inherits System.Web.UI.Page


    Protected Const SqlConnectionString As String = _
        "Server=(local);" & _
        "DataBase=metro;" & _
        "Integrated Security=SSPI"

    Dim AuthorName As String
    Dim queryViewBio As String = "SELECT DISTINCT AuthorBio FROM Books WHERE Author = @Author ;"


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AuthorTextBox_TextChanged(sender As Object, e As EventArgs) Handles AuthorTextBox.TextChanged

    End Sub

  

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        AuthorName = AuthorTextBox.Text
        
        Dim connection As New SqlConnection(SqlConnectionString)
        Dim cmd As New SqlCommand(queryViewBio, connection)
        cmd.Parameters.Add("@Author", SqlDbType.NVarChar).Value = AuthorTextBox.Text

        Dim sda As New SqlDataAdapter(cmd)
        Dim ds As New DataSet("AuthorBio")
        sda.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()

    End Sub

End Class