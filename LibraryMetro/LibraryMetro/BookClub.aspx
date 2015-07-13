<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="BookClub.aspx.vb" Inherits="LibraryMetro.BookClub" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1><br />
                <h2>HI ! Here are our Book Club Members</h2>
            </hgroup>
            <p>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>


            </p>
        </div>
    </section>
</asp:Content>
