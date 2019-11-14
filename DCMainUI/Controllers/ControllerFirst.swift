//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

public class ControllerFirst: Module.UI.Controller.Component {
    
    public override class var storyboardIdentifier: String { return "first" }
    
    // MARK: - View LifeCycle
    
    private let service = Main.UI.Service.First()
    
    @IBOutlet weak var tableView: UITableView!

    override public func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension ControllerFirst: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return service.collection.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = service.collection[indexPath.row].name
        return cell
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        (flow.parent as! Main.UI.Flow.Navigation).showSecond(row: service.collection[indexPath.row])
    }
}

