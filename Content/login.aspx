<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="login.aspx.vb" Inherits="Currier.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="ONE.css" />
    <div class="login-container">
        <h2>Iniciar Sesión</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <div>
            <asp:Label ID="lblUsername" runat="server" Text="Usuario:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
        </div>
        
        <div style="margin-top: 10px;">
            <asp:Label ID="lblRegisterMessage" runat="server" Text="¿No tienes cuenta? "></asp:Label>
            <a href="Register.aspx" style="color: blue;">Regístrate aquí</a>
        </div>
    </div>
</asp:Content>

