
import UIKit

class TableViewController: UITableViewController {
    
    var lenguajes = ["JavaScript", "C#", "Java"]
    
    var tareaSeleccionada : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 //3
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lenguajes.count //3
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Lenguajes"//"Section \(section)"
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let filaSeleccionada = tableView.dequeueReusableCellWithIdentifier("celdaLenguajes", forIndexPath: indexPath)
        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        filaSeleccionada.textLabel?.text = lenguajes[indexPath.row]
        return filaSeleccionada
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let filaSeleccionada = tableView.cellForRowAtIndexPath(indexPath)!
        tareaSeleccionada = (filaSeleccionada.textLabel?.text)!
        
        if filaSeleccionada.accessoryType == UITableViewCellAccessoryType.None{
            filaSeleccionada.accessoryType = UITableViewCellAccessoryType.Checkmark
            filaSeleccionada.tintColor = UIColor.greenColor()
        }else{
            filaSeleccionada.accessoryType = UITableViewCellAccessoryType.None
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
