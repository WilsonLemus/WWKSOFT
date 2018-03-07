using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ishi
{
    public class ConnectionSQL
    {
        SqlConnection cn;
        SqlCommand cmd;
        
        public void connect()
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=WILSON-PC\\SOFTWONE; Initial Catalog=Ishi; Integrated Security=true";
        }

        public SqlDataReader consultas(String consulta)
        {
            SqlDataReader dr = null;
            try
            {
                connect();
                cmd = new SqlCommand();
                /*
                switch (tipo)
                {
                    case "select":
                        cmd.CommandText = consulta;
                        break;
                    case "insert":
                        cmd.CommandText = consulta;
                        break;
                }*/
                cmd.CommandText = consulta;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = cn;
                cn.Open();
                dr = cmd.ExecuteReader();
                return dr;
            }catch(Exception ex)
            {
                return dr;
            }           
        }
    }
}