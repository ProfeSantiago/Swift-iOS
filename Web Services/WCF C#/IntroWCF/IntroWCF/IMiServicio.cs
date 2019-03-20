using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace IntroWCF
{
    [ServiceContract()]
    public interface IMiServicio
    {
        [OperationContract]
        [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]  
        string Saludar(string Nombre);

        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        Persona DevuelveObjetoPersona(int id, string Nom, string Tel);

        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        Persona DevuelvePersona(int PersonaID);

        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        List<Persona> DevuelveListaPersonas();

    }//Fin IMiServicio

    //Para más información acerca de Operaciones de servicio, visite:
    //https://msdn.microsoft.com/es-es/library/cc668788(v=vs.110).aspx

    //[WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]  
}
