//
//  dclife
//

import UIKit
import DCModule

open class ModuleUIControllerComponent: UIViewController, Module.UI.ComponentProtocol {
    public weak var flow: Module.UI.Flow.Component!
    open class var bundle: Bundle { return Bundle(for: self) }
    open class var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
    open class var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    open class var storyboardIdentifier: String { return "default" }
    open class func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
