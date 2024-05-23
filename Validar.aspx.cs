using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroLoginAjax
{
    public partial class Validar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ru = Request["ru"];
            string clave = Request["pass"];

            // Recibimos la lista de usuarios de la sesión
            List<Usuario> lista = (List<Usuario>)Session["lista"];
            bool encontrado = false;
            foreach (Usuario u in lista)
            {
                if (u.Ru == ru & u.Contra == clave)
                    encontrado = true;
            }
            if (encontrado)
                Response.Write("Exito");
            else
                Response.Write("Error");
        }
    }
}