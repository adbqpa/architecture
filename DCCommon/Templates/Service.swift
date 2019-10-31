//
//  dclife
//

import Foundation

public protocol CommonServiceLogicProtocol: Common.ComponentProtocol {}

public protocol CommonServiceObjectProtocol: Common.Service.LogicProtocol {
    associatedtype T
    var object: T? { get }
}

public protocol CommonServiceCollectionProtocol: Common.Service.LogicProtocol {
    associatedtype T
    var collection: [T] { get }
}

extension Common.Service {
    public typealias LogicProtocol = CommonServiceLogicProtocol
    public typealias ObjectProtocol = CommonServiceObjectProtocol
    public typealias CollectionProtocol = CommonServiceCollectionProtocol
}
