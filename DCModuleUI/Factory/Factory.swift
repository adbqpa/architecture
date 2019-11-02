//
//  dclife
//

import Foundation
import DCModule

@objc public protocol ModuleUIFactory: Module.UI.ComponentProtocol {}

extension Module.UI {
    public typealias Factory = ModuleUIFactory
}
