<%@ Page Title="" Language="C#" MasterPageFile="~/io/pageMaster.Master" AutoEventWireup="true" CodeBehind="pacientes.aspx.cs" Inherits="Ishi.io.pacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="MensajeError" runat="server"></asp:Literal>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light" style="margin-bottom: 0px; padding: 0px 5px 0px;">
                <asp:Label ID="lError" runat="server" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-user-following" style="font-size: 25px"></i>
                        <span class="caption-subject font-dark sbold uppercase">Paciente</span>
                    </div>
                    <div class="actions">
                        <div class="btn-group btn-group-devided">
                            <asp:Button ID="BtnBuscarMedico" runat="server" CssClass="btn btn-transparent green-haze btn-outline btn-circle btn-sm" Text="Buscar" OnClick="BtnBuscarMedico_Click"/>
                            <asp:TextBox ID="TBBuscarMedico" runat="server" CssClass="form-control" Style="width: 200px" TextMode="Number"></asp:TextBox>
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
                                    <i class="icon-user-following"></i>
                                    <asp:Label ID="TituloPaciente" runat="server" Text="Nuevo Paciente"></asp:Label>
                                </div>
                                <div class="actions">
                                    <asp:Button ID="activarPacientel" runat="server" CssClass="btn blue" Text="Activo" />
                                </div>
                            </div>
                            <div class="portlet-body form">
                                <div class="form-horizontal">
                                    <div class="form-body">
                                        <h3 class="form-section">Informacion Personal</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Nombre(s)</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="nomPaciente" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Apellido(s)</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="apePaciente" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Tipo Documento</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList ID="tipoDocumento" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="CC">Cedula</asp:ListItem>
                                                            <asp:ListItem Value="PAS">Pasaporte</asp:ListItem>
                                                            <asp:ListItem Value="NIT">Nit</asp:ListItem>
                                                            <asp:ListItem Value="CEX">Cedula Extranjera</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Numero Documento</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="docPaciente" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Telefono</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="telPaciente" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Celular</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="celPaciente" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>   
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Correo</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="mailPPaciente" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="form-section">Informacion de Residencia</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Departamento</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList ID="deptoPaciente" runat="server" CssClass="form-control" OnSelectedIndexChanged="deptoPaciente_SelectedIndexChanged1" AutoPostBack="true">
                                                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Ciudad</label>
                                                    <div class="col-md-9">
                                                        <asp:DropDownList ID="ciuPaciente" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Direccion</label>
                                                    <div class="col-md-9">
                                                        <asp:TextBox ID="dirPaciente" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="form-section">Informacion Medica</h3>
                                    </div>
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-offset-3 col-md-9">
                                                        <asp:Button ID="guardarPro" runat="server" CssClass="btn green" Text="Guardar" OnClick="guardarPro_Click"/>
                                                        <asp:Button ID="editarPro" runat="server" CssClass="btn blue" Text="Editar" OnClick="editarPro_Click" Enabled="false"/>
                                                        <asp:Button ID="limpiarPro" runat="server" CssClass="btn default" Text="Limpiar" OnClick="limpiarPro_Click"/>
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
