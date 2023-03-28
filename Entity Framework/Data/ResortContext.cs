using Entity_Framework.Model;
using System.Data.Entity;

namespace Entity_Framework.Data
{
    public class ResortContext : DbContext
    {
        //El uso de una cadena de conexión hardcoded en el constructor del contexto no es lo ideal,
        //ya que dificulta la portabilidad de la aplicación. Sería mejor tener la cadena de conexión en un archivo de configuración,
        //como appsettings.json en .NET Core o app.config en .NET Framework.

        public ResortContext() : base(@"Server=TACHO-PC;Database=Booking;Integrated Security=True") { }

        //Define una tabla en la base de datos.

        public DbSet<Resort> Resorts { get; set; }
    }
}