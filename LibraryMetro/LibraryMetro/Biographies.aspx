<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Biographies.aspx.vb" Inherits="LibraryMetro.Biographies" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1><br />
                <h2></h2>
            </hgroup>
            <p>
            </p>
            <asp:Label ID="Label1" runat="server" Text="Please Enter the name of the author you wish to read on"></asp:Label>
            <asp:TextBox ID="AuthorTextBox" runat="server" style="margin-left: 72px"></asp:TextBox>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" style="margin-left: 449px" Text="Button" Width="139px" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                


            </p>
        </div>
    </section>
</asp:Content>
