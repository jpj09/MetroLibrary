<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Confirmed.aspx.vb" Inherits="LibraryMetro.Confirmed" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <br />
                <h2>You have successfully Registered</h2>
            </hgroup>
            <p>
                
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">LOGIN</asp:HyperLink>                


            </p>
        </div>
    </section>
</asp:Content>
