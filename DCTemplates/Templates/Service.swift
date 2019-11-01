//
//  dclife
//

import Foundation

public protocol ServiceLogicProtocol: Templates.ComponentProtocol {}

public protocol ServiceObjectProtocol: Templates.Service.LogicProtocol {
    associatedtype T
    var object: T? { get }
}

public protocol ServiceCollectionProtocol: Templates.Service.LogicProtocol {
    associatedtype T
    var collection: [T] { get }
}

extension Templates.Service {
    public typealias LogicProtocol = ServiceLogicProtocol
    public typealias ObjectProtocol = ServiceObjectProtocol
    public typealias CollectionProtocol = ServiceCollectionProtocol
}
