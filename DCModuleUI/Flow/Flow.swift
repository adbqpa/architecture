//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIFlowComponentProtocol: Module.UI.ComponentProtocol {
    var parent: Module.UI.Flow.ComponentProtocol? { get set }
    var initialViewController: UIViewController! { get }
}

public protocol ModuleUIFlowNavigationProtocol: Module.UI.Flow.ComponentProtocol {
    var navigationController: UINavigationController! { get }
}

public extension Module.UI.Flow.NavigationProtocol {
    var initialViewController: UIViewController! { return navigationController }
}

public protocol ModuleUIFlowTabProtocol: Module.UI.Flow.ComponentProtocol {
    var tabBarController: UITabBarController! { get }
}

public extension Module.UI.Flow.TabProtocol {
    var initialViewController: UIViewController! { return tabBarController }
}

extension Module.UI.Flow {
    public typealias ComponentProtocol = ModuleUIFlowComponentProtocol
    public typealias Component = (NSObject & ComponentProtocol)
    public typealias NavigationProtocol = ModuleUIFlowNavigationProtocol
    public typealias Navigation = (NSObject & NavigationProtocol & UINavigationControllerDelegate)
    public typealias TabProtocol = ModuleUIFlowTabProtocol
    public typealias Tab = (NSObject & TabProtocol & UITabBarControllerDelegate)
}
