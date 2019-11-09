//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

public class DCMainUISecondViewController: Module.UI.Controller.Component {
    
    // MARK: - Common.UI.Controller.ObjectProtocol
    
    public weak var flow: Module.UI.Flow.ComponentProtocol!
    
    public static var storyboardIdentifier: String { return "second" }

    let service = Main.UI.Service.Second()
    
    // MARK: - View LifeCycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }

}
