//
//  dclife
//

import UIKit
import DCModule

open class ModuleUIControllerComponent: UIViewController, Module.UI.ComponentProtocol {
    public weak var flow: Module.UI.Flow.Component!
    public class var bundle: Bundle { return Bundle(for: self) }
    public class var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
    public class var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    public class var storyboardIdentifier: String { return "default" }
    public class func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
