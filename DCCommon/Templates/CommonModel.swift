//
//  dclife
//

import Foundation

public protocol CommonModelCodableProtocol: Codable, Common.Component {}

public protocol CommonModelObjectProtocol: Common.Model.Codable {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol CommonModelCollectionProtocol: Common.Model.Codable {
    associatedtype Object: Common.Model.Codable
    var collection: [Object] { get }
}
