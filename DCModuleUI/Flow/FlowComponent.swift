//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class Component: Module.UI.Component {
        
        public let uuid = UUID().uuidString
        
        open var bundle: Bundle { return Bundle(for: self.classForCoder) }
        open var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
        open var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
        
        public internal(set) weak var parent: Module.UI.Flow.Component?
        
        public func removeFromParent() {
            parent?.remove(child: self)
        }
        
        public internal(set) var children = [Module.UI.Flow.Component]()
        
        public func add(child: Module.UI.Flow.Component) {
            children.append(child)
            child.parent = self
        }
        
        public func remove(child: Module.UI.Flow.Component) {
            children.removeAll(where: { $0.uuid == child.uuid })
        }
        
        open lazy var viewController: UIViewController = {
            let result = initialViewController
            (result as? Module.UI.Controller.Component)?.flow = self
            return result
        }()
        open var initialViewController: UIViewController {
            return storyboard.instantiateInitialViewController()!
        }
        
        open func show(flow: Module.UI.Flow.Component) {
            present(flow: flow)
        }
        open func present(flow: Module.UI.Flow.Component, animated: Bool = true) {
            add(child: flow)
            viewController.present(flow.viewController, animated: animated)
        }
        open func dismiss(animated: Bool = true) {
            parent?.remove(child: self)
            viewController.dismiss(animated: animated)
        }
    }
}
