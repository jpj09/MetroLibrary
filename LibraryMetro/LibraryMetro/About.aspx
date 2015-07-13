<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="LibraryMetro.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>About Us</h1>
    </hgroup>

    <article>
        <p>        
            &nbsp;</p>

        <p>        
            We are a library dedicated to customer service. JOIN US NOW</p>

        <p>        
            &nbsp;</p>
    </article>

    <aside>
        <h3>&nbsp;</h3>
        <p>        
            &nbsp;</p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About">About</a></li>
            <li><a runat="server" href="~/Contact">Contact</a></li>
        </ul>
    </aside>
</asp:Content>