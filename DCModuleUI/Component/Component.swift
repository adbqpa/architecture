//
//  dclife
//

import UIKit
import DCModule

@objc public protocol ModuleUIComponentProtocol: NSObjectProtocol {}

extension Module.UI {
    public typealias ComponentProtocol = ModuleUIComponentProtocol
    public typealias Component = (NSObject & ComponentProtocol)
}
