//
//  dclife
//

import UIKit
import DCTemplates

@objc public protocol TemplatesUIComponentProtocol: NSObjectProtocol {}

public extension Templates.UI.ComponentProtocol {
    static var bundle: Bundle { return Bundle(for: self) }
    static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
}

extension Templates.UI {
    public typealias ComponentProtocol = TemplatesUIComponentProtocol
    public class Component: NSObject, Templates.UI.ComponentProtocol {
        static var bundle: Bundle { return Bundle(for: self) }
        static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
        static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
    }
}
