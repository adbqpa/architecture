//
//  dclife
//

import Foundation
import DCModule

@objc public protocol ModuleUIModelObjectProtocol: Module.UI.ComponentProtocol {}

public protocol ModuleUIModelCollectionProtocol: Module.UI.ComponentProtocol {
    associatedtype Object
    var collection: [Object] { get }
}

extension Module.UI.Model {
    public typealias ObjectProtocol = ModuleUIModelObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = ModuleUIModelCollectionProtocol
    public typealias Collection = (NSObject & CollectionProtocol)
}
