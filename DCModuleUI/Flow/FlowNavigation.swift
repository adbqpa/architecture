//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class Navigation: Module.UI.Flow.Component, UINavigationControllerDelegate {
        
        private(set) weak var root: Module.UI.Flow.Component?
        
        open lazy var navigationController: UINavigationController = {
            let result = viewController as! UINavigationController
            result.delegate = self
            return result
        }()
        
        open override var initialViewController: UIViewController {
            if let ctrl = root?.viewController {
                return UINavigationController(rootViewController: ctrl)
            }
            return UINavigationController()
        }
        
        private(set) var flows = [Module.UI.Flow.Component]()
        
        public init(root: Module.UI.Flow.Component) {
            self.root = root
            super.init()
            children.append(root)
            flows.append(root)
            root.parent = self
        }
        open override func show(flow: Module.UI.Flow.Component) {
            if flow is Module.UI.Flow.Navigation {
                present(flow: flow)
            } else {
                push(flow: flow)
            }
        }
        open func push(flow: Module.UI.Flow.Component, animated: Bool = true) {
            add(child: flow)
            flows.append(flow)
            navigationController.pushViewController(flow.viewController, animated: animated)
        }
        open func pop(animated: Bool = true) {
            let flow = flows.last!
            remove(child: flow)
            flows.removeAll(where: { $0.uuid == flow.uuid })
            navigationController.popViewController(animated: animated)
        }
    }
}

extension Module.UI.Flow.Component {
    public var navigationFlow: Module.UI.Flow.Navigation? {
        return parent as? Module.UI.Flow.Navigation
    }
}
