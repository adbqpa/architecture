//
//  dclife
//

import UIKit
import DCModule

@objc public protocol ModuleUIComponentProtocol: NSObjectProtocol {}

public extension Module.UI.ComponentProtocol {
    static var bundle: Bundle { return Bundle(for: self) }
    static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
}

extension Module.UI {
    public typealias ComponentProtocol = ModuleUIComponentProtocol
    public class Component: NSObject, Module.UI.ComponentProtocol {
        static var bundle: Bundle { return Bundle(for: self) }
        static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
        static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
    }
}
