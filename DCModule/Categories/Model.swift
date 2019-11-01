//
//  dclife
//

import Foundation

public protocol ModelCodableProtocol: Codable, Module.ComponentProtocol {}

public protocol ModelObjectProtocol: Module.Model.CodableProtocol {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol ModelCollectionProtocol: Module.Model.CodableProtocol {
    associatedtype Object: Module.Model.CodableProtocol
    var collection: [Object] { get }
}

extension Module.Model {
    public typealias CodableProtocol = ModelCodableProtocol
    public typealias ObjectProtocol = ModelObjectProtocol
    public typealias CollectionProtocol = ModelCollectionProtocol
}
