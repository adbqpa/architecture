//
//  dclife
//

import UIKit
import DCCommon

public protocol CommonUIFlowObjectProtocol: Common.UI.ComponentProtocol {
    var parent: Common.UI.Flow.ObjectProtocol? { get set }
    var initialViewController: UIViewController? { get }
}

public protocol CommonUIFlowNavigationProtocol: Common.UI.Flow.ObjectProtocol {
    var navigationController: UINavigationController? { get }
}

public extension Common.UI.Flow.NavigationProtocol {
    var initialViewController: UIViewController? { return navigationController }
}

public protocol CommonUIFlowTabProtocol: Common.UI.Flow.ObjectProtocol {
    var tabBarController: UITabBarController? { get }
}

public extension Common.UI.Flow.TabProtocol {
    var initialViewController: UIViewController? { return tabBarController }
}

extension Common.UI.Flow {
    public typealias ObjectProtocol = CommonUIFlowObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias NavigationProtocol = CommonUIFlowNavigationProtocol
    public typealias Navigation = (NSObject & NavigationProtocol)
    public typealias TabProtocol = CommonUIFlowTabProtocol
    public typealias Tab = (NSObject & TabProtocol)
}
