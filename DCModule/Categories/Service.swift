//
//  dclife
//

import Foundation

public protocol ServiceLogicProtocol: Module.ComponentProtocol {}

public protocol ServiceObjectProtocol: Module.Service.LogicProtocol {
    associatedtype T
    var object: T? { get }
}

public protocol ServiceCollectionProtocol: Module.Service.LogicProtocol {
    associatedtype T
    var collection: [T] { get }
}

extension Module.Service {
    public typealias LogicProtocol = ServiceLogicProtocol
    public typealias ObjectProtocol = ServiceObjectProtocol
    public typealias CollectionProtocol = ServiceCollectionProtocol
}
