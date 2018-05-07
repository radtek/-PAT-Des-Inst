﻿<%@ Page Title="DASHBOARD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="PATOnline.DashboardAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
      <div class="col-md-3" style="text-align: center; align-content: center;">
        <p><asp:Image runat="server" ID="logo" CssClass="logo" Width="100" Height="100" /></p>
      </div>
      <div class="col-md-8" style="text-align: center; align-content: center; color: black;">
        <h1><asp:Label runat="server" ID="lblFADN"></asp:Label></h1>
      </div>
    </div>

    <div class="row">
      <div class="col-md-4" style="text-align: center; align-content: center; color: black;">
        <h3><b>
          <asp:Label runat="server" Text="Usuarios Registrados"></asp:Label></b></h3>
        <div class="well" style="color: black">
          <h1><b>
            <asp:Label runat="server" ID="lblContUsuario"></asp:Label></b></h1>
        </div>
      </div>
      <div class="col-md-4" style="text-align: center; align-content: center; color: black;">
        <h3><b>
          <asp:Label runat="server" Text="Usuarios Activos"></asp:Label></b></h3>
        <div class="well" style="color: black">
          <h1><b>
            <asp:Label runat="server" ID="lblUsuarioActivo"></asp:Label></b></h1>
        </div>
      </div>
      <div class="col-md-4" style="text-align: center; align-content: center; color: black;">
        <h3><b>
          <asp:Label runat="server" Text="Usuarios Inactivos"></asp:Label></b></h3>
        <div class="well" style="color: black">
          <h1><b>
            <asp:Label runat="server" ID="lblUsuarioInactivo"></asp:Label></b></h1>
        </div>
      </div>
    </div>

</asp:Content>
