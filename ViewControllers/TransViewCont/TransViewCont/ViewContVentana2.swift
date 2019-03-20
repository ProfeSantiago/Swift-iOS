

import UIKit

class ViewContVentana2: UIViewController {
    
    @IBOutlet weak var labelVentana2: UILabel!
    
    var valorPasado: String?
    
    var datosPasados: ClaseDatos?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelVentana2.text = "Hola " + valorPasado!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
