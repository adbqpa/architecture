//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class Navigation: Module.UI.Flow.Component, UINavigationControllerDelegate {
        public lazy var navigationController: UINavigationController = {
            let result = viewController as! UINavigationController
            (result.viewControllers.first as? Module.UI.Controller.Component)?.flow = self
            result.delegate = self
            return result
        }()
    }
}
