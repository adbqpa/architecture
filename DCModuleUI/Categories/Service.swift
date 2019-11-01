//
//  dclife
//

import Foundation
import DCModule

@objc public protocol ModuleUIServiceLogicProtocol: Module.UI.ComponentProtocol {}

public protocol ModuleUIServiceObjectProtocol: Module.UI.Service.LogicProtocol {
    associatedtype Object
    var object: Object? { get }
}

public protocol ModuleUIServiceCollectionProtocol: ModuleUIServiceLogicProtocol {
    associatedtype Object
    var collection: [Object] { get }
}


extension Module.UI.Service {
    public typealias LogicProtocol = ModuleUIServiceLogicProtocol
    public typealias Logic = (NSObject & LogicProtocol)
    public typealias ObjectProtocol = ModuleUIServiceObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = ModuleUIServiceCollectionProtocol
    public typealias Collection = (NSObject & CollectionProtocol)
}
