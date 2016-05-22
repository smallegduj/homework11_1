import UIKit

class ViewController: UIViewController, UITableViewDataSource {

        let movieArray = [["name":"batMan1", "actor":"Mike"],
                          ["name":"batMan2", "actor":"Robbin"],
                          ["name":"batMan3", "actor":"Homer"]]
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell_Id", forIndexPath: indexPath)
        let dic = movieArray[indexPath.row]
        
        cell.textLabel?.text = dic["name"]
        cell.detailTextLabel?.text = dic["actor"]
        
        return cell
    }
}

