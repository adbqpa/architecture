//
//  dclife
//

import UIKit
import DCModule

extension Module.UI.Flow {
    open class Component: Module.UI.Component {
        open var bundle: Bundle { return Bundle(for: self.classForCoder) }
        open var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
        open var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
        
        weak var parent: Module.UI.Flow.Component?
        open lazy var viewController: UIViewController = {
            let result = initialViewController
            (result as? Module.UI.Controller.Component)?.flow = self
            return result
        }()
        open var initialViewController: UIViewController {
            return storyboard.instantiateInitialViewController()!
        }
    }
}
