using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_CarlosRomano
{
    public partial class Sectores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_atras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void Btn_agregar_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource1.Insert();
            if (result != 0)
            {
                Label1.Text = "Se ha agregado " + result.ToString() + "  registros";
                TextBox1.Text = "";
            }
            else
            {
                Label1.Text = "NO se agrego registro";
                TextBox1.Text = "";
            }

        }

        protected void Btn_eliminar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["idSector"].DefaultValue = ListBox1.SelectedValue.ToString();
            int result = SqlDataSource1.Delete();
            if (result != 0)
            {
                Label1.Text = "Se ha eliminado" + result.ToString() + " registros";

            }
            else
            {
                Label1.Text = "NO se Eliminaro los registros";
            }

        }

        protected void Btn_modificar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["idSector"].DefaultValue = ListBox1.SelectedValue.ToString();
            SqlDataSource1.UpdateParameters["nombreSector"].DefaultValue = TextBox2.Text;
            int result = SqlDataSource1.Update();
            if (result != 0)
            {
                Label1.Text = "Se ha Modificado" + result.ToString() + " registros";

            }
            else
            {
                Label1.Text = "NO se Modificado los registros";
            }

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                TextBox2.Text = reader["nombreSector"].ToString();
            }

        }

        
    }

}