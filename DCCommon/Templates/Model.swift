//
//  dclife
//

import Foundation

public protocol CommonModelCodableProtocol: Codable, Common.ComponentProtocol {}

public protocol CommonModelObjectProtocol: Common.Model.CodableProtocol {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol CommonModelCollectionProtocol: Common.Model.CodableProtocol {
    associatedtype Object: Common.Model.CodableProtocol
    var collection: [Object] { get }
}

extension Common.Model {
    public typealias CodableProtocol = CommonModelCodableProtocol
    public typealias ObjectProtocol = CommonModelObjectProtocol
    public typealias CollectionProtocol = CommonModelCollectionProtocol
}
