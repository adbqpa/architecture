//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

extension Main.UI.Flow {
    class Second: Module.UI.Flow.Component {
        override var initialViewController: UIViewController {
            return Main.UI.Controller.Second.viewController()
        }
    }
}
