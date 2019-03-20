
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NombreTxt: UITextField!
    @IBOutlet weak var SaludaTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func SaludaClick(sender: AnyObject) {
        SaludaTxt.text = "Hola " + NombreTxt.text!
        
        
        let elMensajePopup = UIAlertController(title: "Titulo del Popup",
                                             message: "Mensaje del Popup.",
                                             preferredStyle: UIAlertControllerStyle.Alert)
        
        elMensajePopup.addAction(UIAlertAction(title: "Ok",
            style: .Default,
            handler: { (action: UIAlertAction!) in
                
            //Codigo Opcional
        }))
        
        elMensajePopup.addAction(UIAlertAction(title: "Cancelar",
            style: .Cancel,
            handler: { (action: UIAlertAction!) in
                
            //Codigo Opcional
        }))
        
        
        presentViewController(elMensajePopup, animated: true, completion: nil)
    }
}

