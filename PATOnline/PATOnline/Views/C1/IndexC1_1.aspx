﻿<%@ Page Title="C1.1: DESARROLLO DEL CAPITAL HUMANO" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndexC1_1.aspx.cs" Inherits="PATOnline.Views.C1.IndexC1_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container">
    <div class="row">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header gradiant">
          <h4 class="modal-title">
            <asp:Label runat="server" ID="lblTitulo2"></asp:Label></h4>
        </div>
        <div class="modal-body">
          <div class="row" style="text-align: center">
            <h3><b>
              <asp:Label runat="server" ID="Message" BackColor="Red">Error al ingresar C1.1</asp:Label>
            </b></h3>
          </div>
          <div class="row">
            <div class="col-md-2">
              <asp:Label runat="server" AssociatedControlID="TxtCodigo" CssClass="control-label">CÓDIGO</asp:Label>
              <asp:TextBox runat="server" ID="TxtCodigo" CssClass="form-control" />
            </div>
            <div class="col-md-2">
              <asp:Label runat="server" AssociatedControlID="DropCategoria" CssClass="control-label">CATEGORÍA</asp:Label>
              <asp:DropDownList runat="server" ID="DropCategoria" CssClass="form-control"></asp:DropDownList>
              <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropCategoria"
                CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar una categoria" />
            </div>
            <div class="col-md-3">
              <asp:Label runat="server" AssociatedControlID="DropActividad" CssClass="control-label">NOMBRE DE LA ACTIVIDAD</asp:Label>
              <asp:DropDownList runat="server" ID="DropActividad" CssClass="form-control"></asp:DropDownList>
              <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropActividad"
                CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar una actividad" />
            </div>
            <div class="col-md-3">
              <asp:Label runat="server" AssociatedControlID="TxtResultado" CssClass="control-label" Font-Size="Smaller">RESULTADOS ESPERADOS</asp:Label>
              <asp:TextBox runat="server" ID="TxtResultado" CssClass="form-control" />
              <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="TxtResultado"
                CssClass="text-danger" ErrorMessage="* Es obligatorio ingresar un resultado" />
            </div>
            <div class="col-md-2">
              <asp:Label runat="server" AssociatedControlID="TxtRegistro" CssClass="control-label">REGISTRO</asp:Label>
              <asp:TextBox runat="server" ID="TxtRegistro" CssClass="form-control" />
              <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="TxtRegistro"
                CssClass="text-danger" ErrorMessage="* Es obligatorio ingresar un registro" />
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <p style="text-align: center;">
                <asp:Label runat="server" CssClass="control-label">FECHA INICIA</asp:Label>
              </p>
              <div class="col-md-6">
                <asp:Label runat="server" AssociatedControlID="DropIDia" CssClass="control-label">DÍA</asp:Label>
                <asp:DropDownList runat="server" ID="DropIDia" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropIDia"
                  CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un día" />
              </div>
              <div class="col-md-6">
                <asp:Label runat="server" AssociatedControlID="DropIMes" CssClass="control-label">MES</asp:Label>
                <asp:DropDownList runat="server" ID="DropIMes" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropIMes"
                  CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un mes" />
              </div>
            </div>
            <div class="col-md-6">
              <p style="text-align: center;">
                <asp:Label runat="server" CssClass="control-label">FECHA FINALIZA</asp:Label>
              </p>
              <div class="col-md-6">
                <asp:Label runat="server" AssociatedControlID="DropFDia" CssClass="control-label">DÍA</asp:Label>
                <asp:DropDownList runat="server" ID="DropFDia" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropFDia"
                  CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un día" />
              </div>
              <div class="col-md-6">
                <asp:Label runat="server" AssociatedControlID="DropFMes" CssClass="control-label">MES</asp:Label>
                <asp:DropDownList runat="server" ID="DropFMes" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropFMes"
                  CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un mes" />
              </div>
            </div>
          </div>
          <asp:UpdatePanel ID="UpdatePanelPais" runat="server">
            <ContentTemplate>
              <div class="row">
                <div class="col-md-12">
                  <p style="text-align: center;">
                    <asp:Label runat="server" CssClass="control-label">UBICACIÓN</asp:Label>
                  </p>
                  <div class="col-md-4">
                    <asp:Label runat="server" AssociatedControlID="DropPais" CssClass="control-label">PAÍS</asp:Label>
                    <asp:DropDownList runat="server" ID="DropPais" CssClass="form-control" OnSelectedIndexChanged="DropPais_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropPais"
                      CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un país" />
                  </div>
                  <div class="col-md-5">
                    <asp:Label runat="server" AssociatedControlID="DropDepartamento" CssClass="control-label">DEPARTAMENTO</asp:Label>
                    <asp:DropDownList runat="server" ID="DropDepartamento" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="DropDepartamento"
                      CssClass="text-danger" ErrorMessage="* Es obligatorio seleccionar un país" />
                  </div>
                  <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="TxtLugar" CssClass="control-label">LUGAR</asp:Label>
                    <asp:TextBox runat="server" ID="TxtLugar" CssClass="form-control" />
                    <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="TxtLugar"
                      CssClass="text-danger" ErrorMessage="* Es obligatorio ingresar un lugar" />
                  </div>
                </div>
              </div>
            </ContentTemplate>
          </asp:UpdatePanel>
          <div class="row">
            <div class="col-md-3">
              <asp:Label runat="server" AssociatedControlID="TxtPresupuesto" CssClass="control-label">PRESUPUESTO</asp:Label>
              <asp:TextBox runat="server" ID="TxtPresupuesto" CssClass="form-control" />
              <asp:RequiredFieldValidator ValidationGroup="validar" runat="server" ControlToValidate="TxtPresupuesto"
                CssClass="text-danger" ErrorMessage="* Es obligatorio ingresar un presupuesto" />
            </div>
            <div class="col-md-9">
              <asp:Label runat="server" AssociatedControlID="TxtDecripcion" CssClass="control-label">DESCRIPCIÓN</asp:Label>
              <asp:TextBox runat="server" ID="TxtDecripcion" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDecripcion"
                CssClass="text-danger" ErrorMessage="* La descripcion es obligatoria" />
            </div>
          </div>
        </div>
        <div class="modal-footer gradiant-inver">
          <asp:LinkButton runat="server" ValidationGroup="validar" ID="SaveIngreso" type="button" class="btn btn-save" data-toggle="tooltip" data-placement="bottom" title="¡Guardar!" OnClick="SaveIngreso_Click">
              <span class="glyphicon glyphicon-floppy-disk"></span>
          </asp:LinkButton>
        </div>
      </div>
    </div>
  </div>
  <br />
  <div class="container">
    <div class="row">
      <table id="tableTitulo" class="table-bordered gradiant" style="color: white; width: 100%">
        <tr>
          <th style="width: 67px; text-align: center; font-size: 10px;" rowspan="3"><b>CÓDIGO</b></th>
          <th style="width: 90px; text-align: center; font-size: 10px;" rowspan="3"><b>CATEGORÍA</b></th>
          <th style="width: 84px; text-align: center; font-size: 10px;" rowspan="3"><b>NOMBRE DE LA ACTIVIDAD</b></th>
          <th style="width: 80px; text-align: center; font-size: 10px;" rowspan="3"><b>DESCRIPCIÓN</b></th>
          <th style="width: 90px; text-align: center; font-size: 10px;" rowspan="3"><b>RESULTADOS ESPERADOS</b></th>
          <th style="width: 83px; text-align: center; font-size: 10px;" rowspan="3"><b>REGISTRO</b></th>
          <th style="text-align: center; font-size: 10px;" colspan="4"><b>FECHA</b></th>
          <th style="text-align: center; font-size: 10px;" rowspan="2" colspan="3"><b>UBICACIÓN</b></th>
          <th style="width: 147px; text-align: center; font-size: 10px;" rowspan="3"><b>PRESUPUESTO</b></th>
        </tr>
        <tr>
          <td style="text-align: center; font-size: 10px;" colspan="2"><b>INICIA</b></td>
          <td style="text-align: center; font-size: 10px;" colspan="2"><b>FINALIZA</b></td>
        </tr>
        <tr>
          <td style="width: 44px; text-align: center; font-size: 10px;"><b>DÍA</b></td>
          <td style="width: 45px; text-align: center; font-size: 10px;"><b>MES</b></td>
          <td style="width: 44px; text-align: center; font-size: 10px;"><b>DÍA</b></td>
          <td style="width: 45px; text-align: center; font-size: 10px;"><b>MES</b></td>
          <td style="width: 126px; text-align: center; font-size: 10px;"><b>DEPARTAMENTO</b></td>
          <td style="width: 79px; text-align: center; font-size: 10px;"><b>PAÍS</b></td>
          <td style="width: 115px; text-align: center; font-size: 10px;"><b>LUGAR</b></td>
        </tr>
      </table>
    </div>
    <div class="row">
      <asp:GridView ID="gvP2" runat="server" AllowPaging="false" AutoGenerateColumns="False" DataKeyNames="numero" ShowHeader="false"
        CssClass="footable" BackColor="white" AllowCustomPaging="False" GridLines="None" AllowSorting="True" Width="100%">
        <Columns>
          <asp:BoundField DataField="codigo">
            <ItemStyle Font-Size="X-Small" Font-Underline="true" />
          </asp:BoundField>
          <asp:BoundField DataField="categoria">
            <ItemStyle Width="84px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="actividad">
            <ItemStyle Width="84px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="descripcion">
            <ItemStyle Width="80px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="resultado">
            <ItemStyle Width="90px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="registro">
            <ItemStyle Width="83px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="inicio_dia">
            <ItemStyle Width="44px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="inicio_mes">
            <ItemStyle Width="45px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="fin_dia">
            <ItemStyle Width="44px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="fin_mes">
            <ItemStyle Width="45px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="departamento">
            <ItemStyle Width="126px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="pais">
            <ItemStyle Width="79px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:BoundField DataField="lugar">
            <ItemStyle Width="115px" Font-Size="X-Small" />
          </asp:BoundField>
          <asp:TemplateField>
            <ItemStyle Width="147px" Font-Size="X-Small" />
            <ItemTemplate>
              <span>Q
                        <asp:Label ID="remarks" runat="server" Text='<%# Eval("presupuesto") %>'></asp:Label></span>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
      </asp:GridView>
    </div>
    <div class="row">
      <asp:GridView ID="gvP3" runat="server" AllowPaging="false" AutoGenerateColumns="False" DataKeyNames="numero" ShowHeader="false"
        CssClass="footable" BackColor="white" AllowCustomPaging="False" GridLines="None" AllowSorting="True">
        <Columns>
          <asp:TemplateField>
            <ItemTemplate>
              <p style="text-align: right; color: black;">
                <b>
                  <asp:Label ID="remarks" runat="server" Text="TOTALES"></asp:Label></b>
              </p>
            </ItemTemplate>
          </asp:TemplateField>
          <asp:TemplateField>
            <ItemStyle Width="147px" />
            <ItemTemplate>
              <p style="text-align: center; color: black;">
                <b>Q
                <asp:Label ID="remarks" runat="server" Text='<%# Eval("total") %>'></asp:Label></b>
              </p>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
      </asp:GridView>
    </div>
  </div>
</asp:Content>

