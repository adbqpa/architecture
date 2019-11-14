//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

public class ControllerSecond: Module.UI.Controller.Component {
    
    public override class var storyboardIdentifier: String { return "second" }

    // MARK: - View LifeCycle
    
    let service = Main.UI.Service.Second()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        flow.parent?.remove(child: flow)
    }

}
