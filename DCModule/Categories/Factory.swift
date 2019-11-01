//
//  dclife
//

import Foundation

public protocol ModuleFactoryProtocol: Module.ComponentProtocol {}

extension Module {
    public typealias FactoryProtocol = ModuleFactoryProtocol
}
