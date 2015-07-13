<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="CreateAccount.aspx.vb" Inherits="LibraryMetro.CreateAccount" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1><br />
                <h2>Fill in ALL info to create account</h2>
            </hgroup>
            <p>ALL fields are required !<br />
                


            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="UserNameTextBox" runat="server" style="margin-left: 210px"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="PasswordTextBox" runat="server" style="margin-left: 215px"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Firstname"></asp:Label>
                <asp:TextBox ID="FirsNameTextBox" runat="server" style="margin-left: 215px"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Lasname"></asp:Label>
                <asp:TextBox ID="LastNameTextBox" runat="server" style="margin-left: 220px"></asp:TextBox>
                <br />
                Address<asp:TextBox ID="AddressTextBox" runat="server" style="margin-left: 224px"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="CityTextBox" runat="server" style="margin-left: 252px"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Province"></asp:Label>
                <asp:TextBox ID="ProvinceTextBox" runat="server" style="margin-left: 218px"></asp:TextBox>
                <br />
                Postal Code<asp:TextBox ID="PostalCodeTextBox" runat="server" style="margin-left: 193px"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Telephone"></asp:Label>
                <asp:TextBox ID="TelephoneTextBox" runat="server" style="margin-left: 204px"></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="EmailTextBox" runat="server" style="margin-left: 236px"></asp:TextBox>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Join Book Club"></asp:Label>
                <asp:CheckBox ID="JoinBookClubCheckBox" runat="server" style="margin-left: 170px" />
                <br />
                <br />
                Avatar&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 223px" />
                <asp:Button ID="UploadButton" runat="server" style="margin-left: 20px" Text="Upload" Width="61px" />
                <asp:Label ID="UploadLabel" runat="server"></asp:Label>
                <asp:Label ID="PathLabel" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Please enter a line or two about your favorite book"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="CommentsTextBox" runat="server" Height="52px" Width="243px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="RegisterButton" runat="server" style="margin-left: 364px" Text="Register" Width="132px" />
                


            </p>
        </div>
    </section>
</asp:Content>
