<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="register.aspx.vb" Inherits="Currier.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="ONE.css" />
    <div class="register-container">
        <h2 class="register-title">Registro de Usuario</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message-label"></asp:Label>
        
        <div class="form-group">
            <asp:Label ID="lblUsername" runat="server" Text="Usuario:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Ingresa tu nombre de usuario"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingresa tu contraseña"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button ID="btnRegister" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
        </div>

        <div class="register-footer">
            <asp:Label ID="lblRegisterMessage" runat="server" Text="¿Ya tienes una cuenta? " CssClass="register-footer-label"></asp:Label>
            <a href="Login.aspx" class="register-link">Inicia sesión aquí</a>
        </div>
    </div>
</asp:Content>


