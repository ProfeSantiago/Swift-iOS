

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ValorGuardado_Txt: UITextField!
    
    var textoGuardado = ""
    
    var miArreglo = [String] ()
    
    let misUserDefaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if misUserDefaults.objectForKey("ArregloValores") as? [String] ?? [String] () != nil
        {
            miArreglo = misUserDefaults.objectForKey("ArregloValores") as? [String] ?? [String] ()
            
            if miArreglo.count > 0 {
                textoGuardado = miArreglo[1]
            }

        }

        ValorGuardado_Txt.text = textoGuardado
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func Guardar_Btn(sender: AnyObject) {
        
        textoGuardado = ValorGuardado_Txt.text!
        miArreglo.append(textoGuardado)
        print(miArreglo)
    }
    
    @IBAction func GuardaDefaults(sender: AnyObject) {
        
        misUserDefaults.setObject(miArreglo, forKey: "ArregloValores")
        
    }
    


}

