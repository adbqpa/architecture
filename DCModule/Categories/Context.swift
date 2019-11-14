//
//  dclife
//

import Foundation

public protocol ModuleContextProtocol: Module.ComponentProtocol {}

extension Module {
    public typealias ContextProtocol = ModuleContextProtocol
}
