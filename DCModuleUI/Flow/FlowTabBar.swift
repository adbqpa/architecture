//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class TabBar: Module.UI.Flow.Component, UITabBarControllerDelegate {
        lazy var tabBarController: UITabBarController = {
            let result = viewController as! UITabBarController
            result.delegate = self
            return result
        }()
    }
}
