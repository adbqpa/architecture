//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIFlowObjectProtocol: Module.UI.ComponentProtocol {
    var parent: Module.UI.Flow.ObjectProtocol! { get set }
    var initialViewController: UIViewController! { get }
}

public protocol ModuleUIFlowNavigationProtocol: Module.UI.Flow.ObjectProtocol {
    var navigationController: UINavigationController! { get }
}

public extension Module.UI.Flow.NavigationProtocol {
    var initialViewController: UIViewController! { return navigationController }
}

public protocol ModuleUIFlowTabProtocol: Module.UI.Flow.ObjectProtocol {
    var tabBarController: UITabBarController! { get }
}

public extension Module.UI.Flow.TabProtocol {
    var initialViewController: UIViewController! { return tabBarController }
}

extension Module.UI.Flow {
    public typealias ObjectProtocol = ModuleUIFlowObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias NavigationProtocol = ModuleUIFlowNavigationProtocol
    public typealias Navigation = (NSObject & NavigationProtocol)
    public typealias TabProtocol = ModuleUIFlowTabProtocol
    public typealias Tab = (NSObject & TabProtocol)
}
