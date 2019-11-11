//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

extension Main.UI.Flow {
    public class Initial: Module.UI.Flow.Navigation {
        
        func showSecond(row: Main.UI.Model.Row) {
            let ctrl = Main.UI.Controller.Second.viewController()
            ctrl.service.object = row
            navigationController.pushViewController(ctrl, animated: true)
        }
    }
}
