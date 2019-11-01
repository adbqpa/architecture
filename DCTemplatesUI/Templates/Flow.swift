//
//  dclife
//

import UIKit
import DCTemplates

public protocol TemplatesUIFlowObjectProtocol: Templates.UI.ComponentProtocol {
    var parent: Templates.UI.Flow.ObjectProtocol? { get set }
    var initialViewController: UIViewController? { get }
}

public protocol TemplatesUIFlowNavigationProtocol: Templates.UI.Flow.ObjectProtocol {
    var navigationController: UINavigationController? { get }
}

public extension Templates.UI.Flow.NavigationProtocol {
    var initialViewController: UIViewController? { return navigationController }
}

public protocol TemplatesUIFlowTabProtocol: Templates.UI.Flow.ObjectProtocol {
    var tabBarController: UITabBarController? { get }
}

public extension Templates.UI.Flow.TabProtocol {
    var initialViewController: UIViewController? { return tabBarController }
}

extension Templates.UI.Flow {
    public typealias ObjectProtocol = TemplatesUIFlowObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias NavigationProtocol = TemplatesUIFlowNavigationProtocol
    public typealias Navigation = (NSObject & NavigationProtocol)
    public typealias TabProtocol = TemplatesUIFlowTabProtocol
    public typealias Tab = (NSObject & TabProtocol)
}
