//
//  dclife
//

import Foundation

public protocol ModelCodableProtocol: Codable, Templates.ComponentProtocol {}

public protocol ModelObjectProtocol: Templates.Model.CodableProtocol {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol ModelCollectionProtocol: Templates.Model.CodableProtocol {
    associatedtype Object: Templates.Model.CodableProtocol
    var collection: [Object] { get }
}

extension Templates.Model {
    public typealias CodableProtocol = ModelCodableProtocol
    public typealias ObjectProtocol = ModelObjectProtocol
    public typealias CollectionProtocol = ModelCollectionProtocol
}
