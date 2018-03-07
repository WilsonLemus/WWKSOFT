<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Ishi.io.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/pages/css/login-5.min.css" rel="stylesheet" type="text/css" />
    <script src="../dist/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../dist/sweetalert.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="mensajes" runat="server"></asp:Literal>
        <div class="user-login-5">
            <div class="row bs-reset">
                <div class="col-md-6 bs-reset mt-login-5-bsfix">
                    <div class="login-bg" style="background-image:url(../assets/pages/img/login/bg1.jpg)">
                        <img class="login-logo" src="../assets/pages/img/login/logo.png" />
                    </div>
                </div>
                <div class="col-md-6 login-container bs-reset mt-login-5-bsfix">
                    <div class="login-content">
                        <h1>Ishi Solutions.</h1>
                        <h3 class="font-green">Iniciar Sesion</h3>
                        <!-- AQUI -->
                        <div id="loginPanel" runat="server" class="login-form" style="margin-top: 20px;">
                            <div class="alert alert-danger display-hide">
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="TBusuario" runat="server" CssClass="form-control form-control-solid placeholder-no-fix form-group"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:TextBox ID="TBcontrasena" runat="server" CssClass="form-control form-control-solid placeholder-no-fix form-group"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <asp:LinkButton ID="foget_pass" runat="server" class="forget-password" Text="¿Olvidaste tu contraseña?" OnClick="foget_pass_Click"></asp:LinkButton>
                                </div>
                                <div class="col-sm-6 text-right">
                                    <div class="forgot-password">
                                        <asp:Button ID="is" runat="server" Text="Iniciar Sesion" CssClass="btn green" OnClick="login_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- BEGIN FORGOT PASSWORD FORM -->
                        <div class="forget-form" id="forgot_pass" runat="server">
                            <h3 class="font-green">¿Olvidaste tu contraseña?</h3>
                            <p>Ingrese tu cuenta de correo electronico para reiniciar la contraseña.</p>
                            <div class="form-group">
                                <input class="form-control placeholder-no-fix form-group" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
                            <div class="form-actions">
                                <button type="button" id="back-btn" class="btn green btn-outline">Volver</button>
                                <button type="submit" class="btn btn-success uppercase pull-right">Enviar</button>
                            </div>
                        </div>
                        <!-- END FORGOT PASSWORD FORM -->
                    </div>
                    <div class="login-footer">
                        <div class="row bs-reset">
                            <div class="col-xs-5 bs-reset">
                                <ul class="login-social">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="icon-social-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="icon-social-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="icon-question"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-7 bs-reset">
                                <div class="login-copyright text-right">
                                    <p>Copyright &copy; SoftWone 2018</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
    <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
    <script src="../assets/pages/scripts/login-5.min.js" type="text/javascript"></script>
</body>
</html>
