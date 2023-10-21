using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_CarlosRomano
{
    public partial class Empleados : System.Web.UI.Page
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
            SqlDataSource2.Insert();
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/archivo_empleados.txt", true);
            streamWriter.WriteLine(TextBox1.Text);
            streamWriter.WriteLine(TextBox2.Text);
            streamWriter.WriteLine(DropDownList1.Text);
            TextBox1.Text = "";
            TextBox2.Text = "";
            

            SqlDataSource2.InsertParameters["apellido"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["nombre"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["idSector"].DefaultValue = DropDownList1.Text;
            int result = SqlDataSource2.Insert();
            if (result != 0)
            {
                Label1.Text = "Se ha Modificado" + result.ToString() + " registros";

            }
            else
            {
                Label1.Text = "NO se Modificado los registros";
            }


            streamWriter.Close();
            Label1.Text = $"agregado ruta archivo_empleados.text {Server.MapPath(".")}.";
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e) 
        {
            
        }

        protected void Btn_filtrar_Click(object sender, EventArgs e)
        {
            SqlDataSource3.FilterExpression = "idSector = " + DropDownList2.SelectedValue;
        }

        protected void Btn_desfiltrar_Click(object sender, EventArgs e)
        {
            SqlDataSource3.FilterExpression = string.Empty;
            SqlDataSource3.FilterParameters.Clear();
        }
    }

}