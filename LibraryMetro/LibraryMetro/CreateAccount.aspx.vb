Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Public Class CreateAccount
    Inherits System.Web.UI.Page

    Protected Const SqlConnectionString As String = _
        "Server=(local);" & _
        "DataBase=metro;" & _
        "Integrated Security=SSPI"

    Dim queryAddUser As String = "INSERT INTO Users(UserName,UserPassword,FirstName,LastName,MemberAddress,City,Province ,PostalCode,Telephone,Email,BookClubMember,Comments,Avatar) VALUES(@UserName,@PassWord,@FirstName,@LastName,@Address,@City,@Province,@PostalCode,@Telephone,@Email,@BookClubMember,@Comments,@Avatar);"


    Dim AvatarURL As String
    Dim UserName As String, Password As String, FirstName As String, LastName As String, Address As String, City As String
    Dim Province As String, PostalCode As String, Telephone As String, Email As String, Comments As String
    Dim BookClubMember As Integer


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub UploadButton_Click(sender As Object, e As EventArgs) Handles UploadButton.Click

        If FileUpload1.HasFile Then
            
            FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName))
            UploadLabel.Text = "Image Uploaded"
            UploadLabel.ForeColor = Drawing.Color.Blue

            PathLabel.Text = Server.MapPath("~/Uploads/" + FileUpload1.FileName)
        Else
            UploadLabel.Text = "Please select a file"
            UploadLabel.ForeColor = Drawing.Color.Red
        End If

    End Sub

    Protected Sub RegisterButton_Click(sender As Object, e As EventArgs) Handles RegisterButton.Click

        UserName = UserNameTextBox.Text
        Password = PasswordTextBox.Text
        FirstName = FirsNameTextBox.Text
        LastName = LastNameTextBox.Text
        Address = AddressTextBox.Text
        City = CityTextBox.Text
        Province = ProvinceTextBox.Text
        PostalCode = PostalCodeTextBox.Text
        Telephone = TelephoneTextBox.Text
        Comments = CommentsTextBox.Text
        Email = EmailTextBox.Text
        AvatarURL = PathLabel.Text


        If JoinBookClubCheckBox.Checked = True Then
            BookClubMember = 1
        Else
            BookClubMember = 0
        End If

        '  Try
        Dim connection As New SqlConnection(SqlConnectionString)
        Dim cmd As SqlCommand = New SqlCommand(queryAddUser, connection)
        cmd.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = UserName
        cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = Password
        cmd.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = FirstName
        cmd.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = LastName
        cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = Address
        cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = City
        cmd.Parameters.Add("@Province", SqlDbType.NVarChar).Value = Province
        cmd.Parameters.Add("@PostalCode", SqlDbType.NVarChar).Value = PostalCode
        cmd.Parameters.Add("@Telephone", SqlDbType.NVarChar).Value = Telephone
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = Email
        cmd.Parameters.Add("@BookClubMember", SqlDbType.Int).Value = BookClubMember
        cmd.Parameters.Add("@Comments", SqlDbType.NVarChar).Value = Comments
        cmd.Parameters.Add("@Avatar", SqlDbType.NVarChar).Value = AvatarURL

        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()


        Response.Redirect("~/Confirmed.aspx?FirstName=" + FirstName + "&LastName=" + LastName)

        'Catch
        '   MsgBox("something went wrong")
        'End Try

    End Sub
End Class