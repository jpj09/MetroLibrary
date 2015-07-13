<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="LibraryMetro._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1><br />
                <h2>Welcome to the Metro Library Website</h2>
            </hgroup>
            <p>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/library.jpg" />


            </p>
            <p>
                &nbsp;</p>
            <p>
                We are the most complete library in the montreal area <br /><br />

                we have a selection of over 100 000 books, wich you can reserve ONLINE and <br />
                pick it up at your convenience.<br /><br />

                Create an account with us NOW !


            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
  


</asp:Content>
