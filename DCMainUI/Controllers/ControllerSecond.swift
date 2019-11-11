//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

public class ControllerSecond: Module.UI.Controller.Component {

    let service = Main.UI.Service.Second()
    
    // MARK: - View LifeCycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }

}
