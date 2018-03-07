using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ishi.io
{
    public partial class medicos : System.Web.UI.Page
    {
        ConnectionSQL cn;
        ManagerFiles manager;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            TBBuscarMedico.Attributes.Add("placeholder", "Cedula...");
            cn = new ConnectionSQL();
            manager = new ManagerFiles();
            if (!IsPostBack)
            {
                cargarDepartamento();
                cargarGrupos();
            }
        }

        private void cargarDepartamento()
        {
            try{
                dr = cn.consultas("Select Departamento from geografia group by Departamento Order by Departamento");
                DataTable td = new DataTable();
                td.Load(dr);

                deptoProfesional.DataSource = td;
                deptoProfesional.DataTextField = "Departamento";
                deptoProfesional.DataValueField = "Departamento";
                deptoProfesional.DataBind();
                deptoProfesional.Items.Insert(0, "Seleccione...");

                dr.Close();
            }
            catch(Exception ex)
            {
                manager.mensajeError("Departamento: " + ex.Message);
            }
        }

        private void cargarCiudad()
        {
            dr = cn.consultas("Select Ciudad from geografia where Departamento='" + deptoProfesional.SelectedValue + "' group by Ciudad");
            DataTable td = new DataTable();
            td.Load(dr);

            ciuProfesional.DataSource = td;
            ciuProfesional.DataTextField = "Ciudad";
            ciuProfesional.DataValueField = "Ciudad";
            ciuProfesional.DataBind();
            ciuProfesional.Items.Insert(0, "Seleccione...");

            dr.Close();
        }

        public void cargarGrupos()
        {
            dr = cn.consultas("Select NombreGrupo, CodGrupo from grupos order by NombreGrupo");
            DataTable td = new DataTable();
            td.Load(dr);

            grupoProfesional.DataSource = td;
            grupoProfesional.DataTextField = "NombreGrupo";
            grupoProfesional.DataValueField = "CodGrupo";
            grupoProfesional.DataBind();
            grupoProfesional.Items.Insert(0, "Seleccione...");

            dr.Close();
        }

        public void cargarPerfiles()
        {
            dr = cn.consultas("Select NombrePerfil, CodPerfil from Perfiles where Cod_Grupo_Perfil='" + grupoProfesional.SelectedValue + "' order by NombrePerfil");
            DataTable td = new DataTable();
            td.Load(dr);

            perfilProfesional.DataSource = td;
            perfilProfesional.DataTextField = "NombrePerfil";
            perfilProfesional.DataValueField = "CodPerfil";
            perfilProfesional.DataBind();
            perfilProfesional.Items.Insert(0, "Seleccione...");
            dr.Close();
        }

        protected void limpiar()
        {
            nomProfesional.Text = "";
            apeProfesional.Text = "";
            tipoDocumento.Text = "Seleccione...";
            docProfesional.Text = "";
            telProfesional.Text = "";
            celProfesional.Text = "";
            mailPProfesional.Text = "";
            deptoProfesional.Text = "Seleccione...";
            ciuProfesional.Text = "Seleccione...";
            dirProfesional.Text = "";
            mailCProfesional.Text = "";
            usuProfesional.Text = "";
            grupoProfesional.Text = "Seleccione...";
            perfilProfesional.Text = "Seleccione...";

            nomProfesional.Enabled = true;
            apeProfesional.Enabled = true;
            tipoDocumento.Enabled = true;
            docProfesional.Enabled = true;
            telProfesional.Enabled = true;
            celProfesional.Enabled = true;
            mailPProfesional.Enabled = true;
            deptoProfesional.Enabled = true;
            ciuProfesional.Enabled = true;
            dirProfesional.Enabled = true;
            mailCProfesional.Enabled = true;
            usuProfesional.Enabled = true;
            grupoProfesional.Enabled = true;
            perfilProfesional.Enabled = true;
        }

        protected void deptoProfesional_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarCiudad();
        }

        protected void grupoProfesional_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarPerfiles();
        }

        protected void guardarPro_Click(object sender, EventArgs e)
        {
            String nom, ape, tip, num, tel, cel, emp, dep, ciu, dir, emc, usu, gru, per;

            nom = nomProfesional.Text;
            ape = apeProfesional.Text;
            tip = tipoDocumento.SelectedValue;
            num = docProfesional.Text;
            tel = telProfesional.Text;
            cel = celProfesional.Text;
            emp = mailPProfesional.Text;
            dep = deptoProfesional.SelectedValue;
            ciu = ciuProfesional.SelectedValue;
            dir = dirProfesional.Text;
            emc = mailCProfesional.Text;
            usu = usuProfesional.Text;
            gru = grupoProfesional.SelectedValue;
            per = perfilProfesional.SelectedValue;

            if(nom.Equals("") || ape.Equals("") || tip.Equals("") || num.Equals("") || tel.Equals("") || cel.Equals("") ||
                emp.Equals("") || dep.Equals("") || ciu.Equals("") || dir.Equals("") || emc.Equals("") || usu.Equals("") ||
                gru.Equals("") || per.Equals(""))
            {
                MensajeError.Text = manager.mensajeError("Todos los campos son requeridos");
            }
            else
            {
                dr = cn.consultas("Select * from Personas Where CCPersona = " + num);
                if (dr.Read())
                {
                    MensajeError.Text = manager.mensajeError("El profesional ya existe");
                }
                else
                {
                    dr = cn.consultas("Insert into Personas values (" + num + ",'" + nom + "','" + ape + "','" + tip + "','" +
                    dir + "','" + ciu + "','" + dep + "'," + tel + "," + cel + ",'" + emp + "','" + emc + "')");
                    dr.Close();

                    dr = cn.consultas("Insert into Usuarios values (" + num + ",'" + usu + "','" + num + "'," + per + ",1)");
                    dr.Close();

                    limpiar();
                    MensajeError.Text = manager.mensajeExitoso("Profesional Guardado con Exito");
                }                
            }
        }

        protected void editarPro_Click(object sender, EventArgs e)
        {

        }

        protected void limpiarPro_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void BtnBuscarMedico_Click(object sender, EventArgs e)
        {
            if (TBBuscarMedico.Text.Equals(""))
            {
                MensajeError.Text = manager.mensajeError("Debe ingresar el Numero de Cedula a Buscar");
            }
            else
            {
                dr = cn.consultas("Select * from Personas Where CCPersona = " + TBBuscarMedico.Text);
                if (dr.Read())
                {
                    nomProfesional.Text = dr["NombrePersona"].ToString();
                    apeProfesional.Text = dr["ApellidosPersona"].ToString();
                    tipoDocumento.Text = dr["Tipo_Doc_Per"].ToString();
                    docProfesional.Text = dr["CCPersona"].ToString();
                    telProfesional.Text = dr["TelefonoPersona"].ToString();
                    celProfesional.Text = dr["CelularPersona"].ToString();
                    mailPProfesional.Text = dr["MailPPersona"].ToString();
                    deptoProfesional.Text = dr["Dpto_Geo_Per"].ToString();
                    cargarCiudad();
                    ciuProfesional.Text = dr["Ciudad_Geo_Per"].ToString();
                    dirProfesional.Text = dr["DireccionPersona"].ToString();
                    mailCProfesional.Text = dr["MailCPersona"].ToString();

                    dr.Close();

                    dr = cn.consultas("select U.NickUsuario, P.NombrePerfil, G.CodGrupo from usuarios U " +
                        "inner join perfiles P ON U.Cod_Per_Usu = P.CodPerfil " +
                        "inner join grupos G ON P.Cod_Grupo_Perfil = G.CodGrupo " +
                        "where U.CC_Per_Usu = " + TBBuscarMedico.Text);
                    dr.Read();
                    usuProfesional.Text = dr["NickUsuario"].ToString();
                    grupoProfesional.Text = dr["CodGrupo"].ToString();
                    cargarPerfiles();
                    perfilProfesional.Text = dr["NombrePerfil"].ToString();

                    TituloProfesional.Text = "Ver Profesional";
                }
                else
                {
                    MensajeError.Text = manager.mensajeError("El Profesional no existe.");
                }
            }            
        }
    }
}