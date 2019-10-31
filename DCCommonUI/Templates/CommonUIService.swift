//
//  dclife
//

import Foundation
import DCCommon

@objc public protocol CommonUIServiceLogicProtocol: Common.UI.ComponentProtocol {}

public protocol CommonUIServiceObjectProtocol: Common.UI.Service.LogicProtocol {
    associatedtype Object
    var object: Object? { get }
}

public protocol CommonUIServiceCollectionProtocol: CommonUIServiceLogicProtocol {
    associatedtype Object
    var collection: [Object] { get }
}


extension Common.UI.Service {
    public typealias LogicProtocol = CommonUIServiceLogicProtocol
    public typealias Logic = (NSObject & LogicProtocol)
    public typealias ObjectProtocol = CommonUIServiceObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = CommonUIServiceCollectionProtocol
    public typealias Collection = (NSObject & CollectionProtocol)
}
