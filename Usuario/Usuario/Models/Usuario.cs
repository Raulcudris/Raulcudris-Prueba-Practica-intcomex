using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Usuario.Models
{
    public class Usuario
    {
        [Key]
        public int UserId { get; set; }
        public string  codigo_ciente { get; set; }
        public string usuario { get; set; }
        public string Nombre { get; set; }
        public string telefono { get; set; }
        public string correo_electronico { get; set; }
        public string n_celular { get; set; }
        public string tipo_contacto { get; set; }

    }
}
