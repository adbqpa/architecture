//
//  dclife
//

import Foundation
import DCModule

public protocol ModuleUIFactoryProtocol: Module.UI.ComponentProtocol {}

extension Module.UI {
    public typealias FactoryProtocol = ModuleUIFactoryProtocol
    public typealias Factory = (NSObject & FactoryProtocol)
}
