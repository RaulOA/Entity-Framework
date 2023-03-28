using Entity_Framework.Data;
using Entity_Framework.Model;
using System.Collections.Generic;
using System.Linq;

namespace Entity_Framework.Controller
{
    public class ResortsController
    {
        //Declaración de la variable _context de tipo ResortContext.El modificador readonly 
        //indica que esta variable solo se puede establecer una vez (en el constructor) y 
        //no se puede modificar después.

        private readonly ResortContext _context;

        public ResortsController()
        {
            // Creamos una instancia del contexto de la base de datos
            // y la almacenamos en una variable de instancia de la clase

            _context = new ResortContext();
        }

        public List<Resort> GetAllResorts()
        {
            // Obtenemos todos los resorts de la base de datos a través del contexto
            // y los devolvemos como una lista

            return _context.Resorts.ToList();
        }
    }

}