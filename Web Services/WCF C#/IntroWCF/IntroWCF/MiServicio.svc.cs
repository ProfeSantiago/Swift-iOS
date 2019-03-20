using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Script.Serialization;

namespace IntroWCF
{
    public class MiServicio : IMiServicio
    {
        public string Saludar(string Nombre)
        {
            return string.Format("Hola {0}, como estas?", Nombre);
        }//Fin Saludar

        public Persona DevuelveObjetoPersona(int id, string Nom, string Tel)
        {
            return new Persona
            {
                ID = id,
                Nombre = Nom,
                Telefono = Tel
            };
        }//Fin DevuelveObjetoPersona

        public Persona DevuelvePersona(int PersonaID)
        {
            //Llama al método DevuelveListaPersonas y lo filtra con una consulta LinQ 

            Persona PersonaInfo = DevuelveListaPersonas().Where(alguien => alguien.ID == PersonaID).FirstOrDefault();

            return PersonaInfo;
        }//Fin DevuelvePersona

        public List<Persona> DevuelveListaPersonas()
        {
            return new List<Persona>
            {
                new Persona { ID = 1, Nombre = "Hugo", Telefono = "1111-1111" },
                new Persona { ID = 2, Nombre = "Paco", Telefono = "2222-2222" },
                new Persona { ID = 3, Nombre = "Luis", Telefono = "3333-3333" },
                new Persona { ID = 4, Nombre = "Rosita", Telefono = "4444-4444" },
            };
        }//Fin DevuelveListaPersonas

    }//Fin MiServicio
}
