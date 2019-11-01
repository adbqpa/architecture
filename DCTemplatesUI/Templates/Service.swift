//
//  dclife
//

import Foundation
import DCTemplates

@objc public protocol TemplatesUIServiceLogicProtocol: Templates.UI.ComponentProtocol {}

public protocol TemplatesUIServiceObjectProtocol: Templates.UI.Service.LogicProtocol {
    associatedtype Object
    var object: Object? { get }
}

public protocol TemplatesUIServiceCollectionProtocol: TemplatesUIServiceLogicProtocol {
    associatedtype Object
    var collection: [Object] { get }
}


extension Templates.UI.Service {
    public typealias LogicProtocol = TemplatesUIServiceLogicProtocol
    public typealias Logic = (NSObject & LogicProtocol)
    public typealias ObjectProtocol = TemplatesUIServiceObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = TemplatesUIServiceCollectionProtocol
    public typealias Collection = (NSObject & CollectionProtocol)
}
