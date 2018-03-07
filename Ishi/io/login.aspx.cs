using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ishi.io
{
    public partial class login : System.Web.UI.Page
    {
        ConnectionSQL cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new ConnectionSQL();
            TBusuario.Attributes.Add("placeholder", "Usuario");
            TBcontrasena.Attributes.Add("placeholder", "Contraseña");
            if (!Page.IsPostBack)
            {
                Response.AppendHeader("Cache-Control", "no-store");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                String usu, pass;
                usu = TBusuario.Text;
                pass = TBcontrasena.Text;
                if(usu.Equals("") || pass.Equals(""))
                {
                    StringBuilder mess = new StringBuilder();
                    mess.Append("<script>");
                    mess.Append("swal(\"Oops...\",\"Todos los campos son requeridos\",\"error\");");
                    mess.Append("</script>");
                    mensajes.Text = mess.ToString();
                }
                else
                {
                    SqlDataReader dr = cn.consultas("select * from usuarios where NickUsuario = '" + usu + "' and PassUsuario = '" + pass + "' and ActivoUsuario = 1");
                    if (dr.Read())
                    {
                        Response.Redirect("dashBoard.aspx");
                    }
                    else
                    {
                        StringBuilder mess = new StringBuilder();
                        mess.Append("<script>");
                        mess.Append("swal(\"Oops...\",\"Datos Incorrectos\",\"error\");");
                        mess.Append("</script>");
                        mensajes.Text = mess.ToString();
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void foget_pass_Click(object sender, EventArgs e)
        {
            loginPanel.Attributes.Add("style", "display: none;");
            forgot_pass.Attributes.Add("style", "display: block;");
        }
    }
}