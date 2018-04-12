﻿<%@ Page Title="ANALISIS DE BRECHAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearBrecha.aspx.cs" Inherits="PATOnline.Views.LogroBrecha.CrearBrecha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header gradiant">
          <h4 class="modal-title black">
            <asp:Label runat="server" ID="lblTitulo2"></asp:Label></h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-12">
              <asp:Label runat="server" AssociatedControlID="DropBrecha" CssClass="control-label">Brecha con respecto a:</asp:Label>
              <asp:DropDownList runat="server" ID="DropBrecha" CssClass="form-control"></asp:DropDownList>
              <asp:RequiredFieldValidator ValidationGroup="Brecha" runat="server" ControlToValidate="DropBrecha"
                CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un Brecha" />
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <asp:Label runat="server" AssociatedControlID="TxtPuntosBrecha" CssClass="control-label">Puntos</asp:Label>
              <asp:TextBox runat="server" ID="TxtPuntosBrecha" CssClass="form-control" TextMode="Number" MaxLength="1000" />
              <asp:RequiredFieldValidator ValidationGroup="Brecha" runat="server" ControlToValidate="TxtPuntosBrecha"
                CssClass="text-danger" ErrorMessage="* El Punteo es obligatorio y debe ser menor que 1,001" />
            </div>
          </div>
          <asp:UpdatePanel runat="server" ID="UpdateComparacion">
            <ContentTemplate>
              <div class="row">
                <div class="col-md-4">
                  <asp:Label runat="server" AssociatedControlID="TxtPuntosObtenidos" CssClass="control-label">Puntos Obtenidos por FADN</asp:Label>
                  <asp:TextBox runat="server" ID="TxtPuntosObtenidos" CssClass="form-control" TextMode="Number" MaxLength="1000" AutoPostBack="true" />
                  <asp:RequiredFieldValidator ValidationGroup="Brecha" runat="server" ControlToValidate="TxtPuntosObtenidos"
                    CssClass="text-danger" ErrorMessage="* El Punteo Obtenido por FADN es obligatorio y debe ser menor que 1001" />
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <asp:Label runat="server" AssociatedControlID="TxtComparacion" CssClass="control-label">Comparaciones</asp:Label>
                  <asp:TextBox runat="server" ID="TxtComparacion" CssClass="form-control" TextMode="Number" Enabled="false" Visible="false" />
                  <asp:RequiredFieldValidator ValidationGroup="Brecha" runat="server" ControlToValidate="TxtComparacion"
                    CssClass="text-danger" ErrorMessage="* La Comparacion es obligatoria" />
                </div>
              </div>
              </ContentTemplate>
          </asp:UpdatePanel>
          <div class="row">
            <div class="col-md-12">
              <asp:Label runat="server" AssociatedControlID="TxtObservacionBrecha" CssClass="control-label">Observaciones</asp:Label>
              <asp:TextBox runat="server" ID="TxtObservacionBrecha" CssClass="form-control" TextMode="MultiLine" />
            </div>
          </div>
        </div>
        <div class="modal-footer gradiant-inver">
          <asp:LinkButton runat="server" ValidationGroup="Brecha" ID="SaveBrecha" type="button" class="btn btn-save" data-toggle="tooltip" data-placement="bottom" title="¡Guardar!" OnClick="SaveBrecha_Click">
              <span class="glyphicon glyphicon-floppy-disk"></span>
          </asp:LinkButton>
          <asp:LinkButton runat="server" CausesValidation="false" ID="CancelBrecha" type="button" class="btn btn-cancel" data-toggle="tooltip" data-placement="bottom" title="¡Cancelar!" OnClick="CancelBrecha_Click">
              <span class="glyphicon glyphicon-ban-circle"></span>
          </asp:LinkButton>
        </div>
      </div>
  </div>
</asp:Content>