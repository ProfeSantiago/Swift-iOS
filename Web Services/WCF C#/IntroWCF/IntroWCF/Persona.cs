using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace IntroWCF
{
    [DataContract]
    public class Persona
    {
        [DataMember]
        public int ID { get; set; }

        [DataMember]
        public string Nombre { get; set; }

        [DataMember]
        public string Telefono { get; set; }
    }//Fin Persona

    //Para más información acerca de Contratos de Datos, visite:
    //https://msdn.microsoft.com/es-es/library/ms733127(v=vs.110).aspx
}