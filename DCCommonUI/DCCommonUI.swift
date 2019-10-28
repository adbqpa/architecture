//
//  CommonUI
//

import UIKit
import DCCommon

@objc public protocol CommonUIComponent: Common.ComponentObjectiveC {}

public extension CommonUIComponent {
    static var bundle: Bundle { return Bundle(for: self) }
    static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
}

@objc public protocol CommonUIObject: CommonUIComponent {}

@objc public protocol CommonUICollection: CommonUIComponent {}

@objc public protocol CommonUIFlow: CommonUIComponent {
    var navigationController: UINavigationController? { get }
    var tabBarController: UITabBarController? { get }
}

public extension CommonUIFlow {
    var initialViewController: UIViewController? {
        if let navigation = navigationController {
            if let controller = navigation.viewControllers.first as? Common.UI.Controller {
                controller.flow = self
            }
            return navigation
        } else if let tabController = tabBarController {
            for controller in tabController.viewControllers ?? [] {
                if let controller = controller as? Common.UI.Controller {
                    controller.flow = self
                }
            }
            return tabBarController
        }
        return nil
    }
}

@objc public protocol CommonUIService: CommonUIComponent {}

public protocol CommonUIServiceObject: CommonUIService {
    associatedtype T
    var object: T? { get }
}

public protocol CommonUIServiceCollection: CommonUIService {
    associatedtype T
    var collection: [T] { get }
}

@objc public protocol CommonUIController: CommonUIComponent {
    var flow: Common.UI.Flow! { get set }
    static var storyboardIdentifier: String { get }
}

public extension CommonUIController {
    static func viewController() -> Self {
        return storyboard.instantiateViewController(identifier: storyboardIdentifier) as! Self
    }
}

@objc public protocol CommonUIFactory: CommonUIComponent {}

public protocol CommonUIView: CommonUIComponent {}

extension Common {
    public enum UI {
        public typealias Component = CommonUIComponent
        public typealias Object = CommonUIObject
        public typealias Collection = CommonUICollection
        public typealias Flow = CommonUIFlow
        public typealias Service = CommonUIService
        public typealias ServiceObject = CommonUIServiceObject
        public typealias ServiceCollection = CommonUIServiceCollection
        public typealias Controller = CommonUIController
        public typealias View = CommonUIView
        public typealias Factory = CommonUIFactory
    }
}
