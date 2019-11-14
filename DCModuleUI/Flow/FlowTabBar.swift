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
        
        open override var initialViewController: UIViewController {
            let ctrl = UITabBarController()
            ctrl.viewControllers = flows.map({ $0.viewController })
            return ctrl
        }
        
        public override init() {
            super.init()
        }
        
        private(set) var flows = [Module.UI.Flow.Component]()
        
        public init(flows: [Module.UI.Flow.Component]) {
            self.flows = flows
            super.init()
            for flow in flows {
                add(child: flow)
            }
        }
    }
}
