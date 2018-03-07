<%@ Page Title="" Language="C#" MasterPageFile="~/io/pageMaster.Master" AutoEventWireup="true" CodeBehind="citas.aspx.cs" Inherits="Ishi.io.citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light portlet-fit bordered calendar">
                <div class="portlet-title">
                    <div class="caption">
                        <i class=" icon-layers font-green"></i>
                        <span class="caption-subject font-green sbold uppercase">Agenda de Citas</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <h3 class="event-form-title margin-bottom-20">Citas</h3>
                            <div id="external-events">
                                <div class="inline-form">
                                    <input type="text" value="" class="form-control" placeholder="Nombre del Paciente..." id="event_title" />
                                    <br/>
                                    <a href="javascript:;" id="event_add" class="btn green"> Agregar Cita </a>
                                </div>
                                <hr/>
                                <div id="event_box" class="margin-bottom-10"></div>
                                <hr class="visible-xs" /> </div>
                        </div>
                        <div class="col-md-9 col-sm-12">
                            <div id="calendar" class="has-toolbar"> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
