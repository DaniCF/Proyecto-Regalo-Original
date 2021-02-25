using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String nombre = TextBoxNombre.Text;
            int cantidad = int.Parse(TextBoxCantidad.Text);
            float precio = float.Parse(TextBoxPrecio.Text);
            if (DropDownList1.SelectedValue == "1"){
                TablaFavoritos.Text += "<table style='width:100%;'><tr><td>" + nombre + "</td><td>" + precio + "</td></tr></table>";
            }
            else if(DropDownList1.SelectedValue == "2") {
                TablaCarrito.Text += "<table style='width:100%;'><tr><td>" + nombre + "</td><td>" + cantidad + "</td><td>" + precio + "</td><td>" + cantidad * precio + "</td></tr></table>";
            }
        }
    }
}