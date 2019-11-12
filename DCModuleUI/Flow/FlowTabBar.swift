//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class TabBar: Module.UI.Flow.Component, UITabBarControllerDelegate {
        open lazy var tabBarController: UITabBarController = {
            let result = viewController as! UITabBarController
            result.delegate = self
            return result
        }()
    }
}
