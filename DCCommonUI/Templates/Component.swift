//
//  dclife
//

import UIKit
import DCCommon

@objc public protocol CommonUIComponentProtocol: NSObjectProtocol {}

public extension Common.UI.ComponentProtocol {
    static var bundle: Bundle { return Bundle(for: self) }
    static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
    static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
}

extension Common.UI {
    public typealias ComponentProtocol = CommonUIComponentProtocol
    public class Component: NSObject, Common.UI.ComponentProtocol {
        static var bundle: Bundle { return Bundle(for: self) }
        static var storyboard: UIStoryboard { return UIStoryboard(name: storyboardName, bundle: bundle) }
        static var storyboardName: String { return bundle.bundleURL.lastPathComponent.replacingOccurrences(of: ".framework", with: "") }
    }
}
