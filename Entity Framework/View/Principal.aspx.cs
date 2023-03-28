using Entity_Framework.Controller;
using System;

namespace Entity_Framework.View
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Card_Libro.DataSource = new ResortsController().GetAllResorts();
            Card_Libro.DataBind();
        }
    }
}