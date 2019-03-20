
import UIKit

class ViewController: UIViewController {
    
    let instaDatos = ClaseDatos ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        instaDatos.nombre = "Juanito Bazooka"
        instaDatos.telefono = "0000-1234"
        instaDatos.direccion = "Costa Rica"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "MuestraVentana2"{
            
            let Ventana2ViewCont = segue.destinationViewController as? ViewContVentana2
            
            Ventana2ViewCont?.valorPasado = "Ventana Principal"
            
            Ventana2ViewCont?.datosPasados = instaDatos
        }
    }


}

