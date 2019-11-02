//
//  dclife
//

import Foundation
import DCModule

@objc public protocol ModuleUIServiceComponentProtocol: Module.UI.ComponentProtocol {}

public protocol ModuleUIServiceObjectProtocol: Module.UI.Service.ComponentProtocol {
    associatedtype Object
    var object: Object? { get }
}

public protocol ModuleUIServiceCollectionProtocol: Module.UI.Service.ComponentProtocol {
    associatedtype Object
    var collection: [Object] { get }
}

