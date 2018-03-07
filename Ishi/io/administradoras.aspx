<%@ Page Title="" Language="C#" MasterPageFile="~/io/pageMaster.Master" AutoEventWireup="true" CodeBehind="administradoras.aspx.cs" Inherits="Ishi.io.administradoras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="Mensajes" runat="server"></asp:Literal>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light" style="margin-bottom: 0px; padding: 0px 5px 0px;">
                <asp:Label ID="lError" runat="server" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus-square" style="font-size: 25px"></i>
                        <span class="caption-subject font-dark sbold uppercase">Administradoras</span>
                    </div>
                    <div class="actions">
                        <div class="btn-group btn-group-devided">
                            <asp:Button ID="BuscarAdmin" runat="server" CssClass="btn btn-transparent green-haze btn-outline btn-circle btn-sm" Text="Buscar" OnClick="BuscarAdmin_Click"/>
                            <asp:TextBox ID="TBBuscarAdmin" runat="server" CssClass="form-control" Style="width: 200px" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tabbable-line boxless tabbable-reversed">
                <div class="tab-content" style="padding: 0px;">
                    <div class="tab-pane active" id="tab_2">
                        <div class="portlet box green">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-plus-square"></i>
                                    <asp:Label ID="TituloAdmin" runat="server" Text="Nueva Administradora"></asp:Label>
                                </div>
                                <div class="actions">
                                    <asp:Button ID="activarProfesional" runat="server" CssClass="btn blue" Text="Activo" />
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <div class="form-horizontal">
                                    <div class="form-body">
                                        <h3 class="form-section">Informacion General</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Nit</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="nitAdmin" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Razón Social</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="razonAdmin" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Dirección</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="DirAdmin" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Teléfono</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="telAdmin" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Departamento</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList ID="deptoAdmin" runat="server" CssClass="form-control" OnSelectedIndexChanged="deptoAdmin_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Ciudad</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList ID="ciuAdmin" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Representante</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="RepAdmin" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Descuento (%)</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="DescuentoAdmin" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="form-section">Copagos y Cuotas</h3>
                                        <div class="portlet-body">
                                            <div class="table-scrollable">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" rowspan="2" style="vertical-align:middle;padding: 0px 30px 0px 30px;"> Tipo de Afiliación </th>
                                                            <th scope="col" colspan="2" style="text-align:center"> Consulta </th>
                                                            <th scope="col" colspan="2" style="text-align:center"> Procedimientos </th>
                                                            <th scope="col" colspan="2" style="text-align:center"> Procedimientos Qx </th>
                                                            <th scope="col" colspan="2" style="text-align:center"> Apoyo Dx </th>
                                                            <th scope="col" colspan="2" style="text-align:center"> Elementos </th>
                                                            <th scope="col" colspan="3" style="text-align:center"> Tope Máximo </th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="col" style="text-align:center"> Tipo </th>
                                                            <th scope="col" style="text-align:center"> Valor ó % </th>
                                                            <th scope="col" style="text-align:center"> Tipo </th>
                                                            <th scope="col" style="text-align:center"> Valor ó % </th>
                                                            <th scope="col" style="text-align:center"> Tipo </th>
                                                            <th scope="col" style="text-align:center"> Valor ó % </th>
                                                            <th scope="col" style="text-align:center"> Tipo </th>
                                                            <th scope="col" style="text-align:center"> Valor ó % </th>
                                                            <th scope="col" style="text-align:center"> Tipo </th>
                                                            <th scope="col" style="text-align:center"> Valor ó % </th>
                                                            <th scope="col" style="text-align:center"> Servicio </th>
                                                            <th scope="col" style="text-align:center"> Factura </th>
                                                            <th scope="col" style="text-align:center"> Anual </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td> Beneficiario Grado 1 </td>
                                                            <td> <asp:TextBox ID="bg1ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg1ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Beneficiario Grado 2 </td>
                                                            <td> <asp:TextBox ID="bg2ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg2ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Beneficiario Grado 3 </td>
                                                            <td> <asp:TextBox ID="bg3ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="bg3ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Contributivo </td>
                                                            <td> <asp:TextBox ID="conct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="concv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conpt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conpv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conqt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conqv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conat" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conav" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conet" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="contf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="conta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Cotizante Grado 1 </td>
                                                            <td> <asp:TextBox ID="cg1ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg1ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Cotizante Grado 2 </td>
                                                            <td> <asp:TextBox ID="cg2ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg2ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Cotizante Grado 3 </td>
                                                            <td> <asp:TextBox ID="cg3ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="cg3ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> FOSYGA </td>
                                                            <td> <asp:TextBox ID="fosct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="foscv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fospt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fospv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosqt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosqv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosat" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosav" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="foset" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fostf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="fosta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Particular </td>
                                                            <td> <asp:TextBox ID="parct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parcv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parpt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parpv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parqt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parqv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parat" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parav" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="paret" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="partf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="parta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Regimen Especial </td>
                                                            <td> <asp:TextBox ID="rgsct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgscv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgspt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgspv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsqt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsqv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsat" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsav" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgset" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgstf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="rgsta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Subsidiado Nivel 1 </td>
                                                            <td> <asp:TextBox ID="sn1ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn1ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Subsidiado Nivel 2 </td>
                                                            <td> <asp:TextBox ID="sn2ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn2ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Subsidiado Nivel 3</td>
                                                            <td> <asp:TextBox ID="sn3ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="sn3ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Vinculado Nivel 1</td>
                                                            <td> <asp:TextBox ID="vn1ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn1ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Vinculado Nivel 2</td>
                                                            <td> <asp:TextBox ID="vn2ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn2ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Vinculado Nivel 3</td>
                                                            <td> <asp:TextBox ID="vn3ct" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3cv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3pt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3pv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3qt" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3qv" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3at" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3av" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3et" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3ev" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3ts" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3tf" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                            <td> <asp:TextBox ID="vn3ta" runat="server" CssClass="form-control" style="width: 70px; padding: 0; text-align:  center; height: 30px;"></asp:TextBox></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-offset-3 col-md-9">
                                                        <asp:Button ID="guardarPro" runat="server" CssClass="btn green" Text="Guardar" />
                                                        <asp:Button ID="editarPro" runat="server" CssClass="btn blue" Text="Editar" Enabled="false"/>
                                                        <asp:Button ID="limpiarPro" runat="server" CssClass="btn default" Text="Limpiar"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
