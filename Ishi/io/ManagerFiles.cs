using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Ishi.io
{
    public class ManagerFiles
    {
        ConnectionSQL cn;

        public String mensajeError(String texto)
        {
            StringBuilder mess = new StringBuilder();
            mess.Append("<script>");
            mess.Append("swal(\"Oops...\",\"" + texto + "\",\"error\");");
            mess.Append("</script>");
            return(mess.ToString());
        }

        public String mensajeExitoso(String texto)
        {
            StringBuilder mess = new StringBuilder();
            mess.Append("<script>");
            mess.Append("swal(\"Guardado\",\"" + texto + "\",\"success\");");
            mess.Append("</script>");
            return (mess.ToString());
        }
    }
}