//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

public class DCMainUIViewController: Module.UI.Controller.Component {
    
    // MARK: - Common.UI.Controller
    
    public weak var flow: Module.UI.Flow.ComponentProtocol!
    public static var storyboardIdentifier = "first"
    private let service = Main.UI.Service.First()
    
    // MARK: - View LifeCycle
    
    @IBOutlet weak var tableView: UITableView!

    override public func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension DCMainUIViewController: UITableViewDataSource, UITableViewDelegate {
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
        (flow as! Main.UI.Flow.Initial).showSecond(row: service.collection[indexPath.row])
    }
}

