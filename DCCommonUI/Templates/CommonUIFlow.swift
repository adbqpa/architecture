//
//  dclife
//

import UIKit
import DCCommon

@objc public protocol CommonUIFlowObjectProtocol: Common.UI.ComponentProtocol {
    var navigationController: UINavigationController? { get }
    var tabBarController: UITabBarController? { get }
    var viewController: UIViewController? { get }
}

public extension CommonUIFlowObjectProtocol {
    var initialViewController: UIViewController? {
        if let navigation = navigationController {
            if let controller = navigation.viewControllers.first as? Common.UI.Controller.ObjectProtocol {
                controller.flow = self
            }
            return navigation
        } else if let tabController = tabBarController {
            for controller in tabController.viewControllers ?? [] {
                if let controller = controller as? Common.UI.Controller.ObjectProtocol {
                    controller.flow = self
                }
            }
            return tabBarController
        } else if let controller = viewController {
            if let controller = controller as? Common.UI.Controller.ObjectProtocol {
                controller.flow = self
            }
            return controller
        }
        return nil
    }
}

extension Common.UI.Flow {
    public typealias ObjectProtocol = CommonUIFlowObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
}
