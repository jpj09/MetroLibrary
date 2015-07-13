<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="ReserveBook.aspx.vb" Inherits="LibraryMetro.ReserveBook" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1><br />
                <h2>Here is the page to reserve books </h2>
            </hgroup>
           <p>


               <asp:Label ID="Label2" runat="server" Text="Please Enter Title  of book you wish to reseve:"></asp:Label>
               <asp:TextBox ID="BookTitleTextBox" runat="server" style="margin-left: 30px"></asp:TextBox>


           </p>
            <p>


                &nbsp;</p>
            <p>


                <br />
                <asp:Label ID="Label4" runat="server" Text="Select date you wish to pick up Book"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="Book is Due in 7 days on:"></asp:Label>
                <br />
                <asp:TextBox ID="DatereservedTextBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="OwedTextBox" runat="server"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <br />
                <br />
                <asp:Button ID="ReseveBookButton" runat="server" style="margin-left: 359px" Text="Reserve Book" Width="132px" />


           </p>
            <p>


                &nbsp;</p>
            <p>


                &nbsp;</p>
            <p>


                &nbsp;</p>
            <p>


                &nbsp;</p>



        </div>
    </section>
</asp:Content>

