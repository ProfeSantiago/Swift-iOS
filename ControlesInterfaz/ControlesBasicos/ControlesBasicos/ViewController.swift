
import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var miScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(miScrollView)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        miScrollView.contentSize = CGSizeMake(320, 800)
    }


    @IBAction func OkClic(sender: AnyObject) {
        
        self.view.viewWithTag(2)?.hidden = false
    }

}

