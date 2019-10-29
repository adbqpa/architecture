//
//  Common
//

import Foundation

public protocol CommonComponent {}
@objc public protocol CommonComponentObjectiveC: NSObjectProtocol {}

public protocol CommonModelCodable: Codable, Common.Component {}

public protocol CommonModelObject: Common.Model.Codable {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol CommonModelCollection: Common.Model.Codable {
    associatedtype Object: Common.Model.Codable
    var collection: [Object] { get }
}

public protocol CommonServiceLogic: Common.Component {}

public protocol CommonServiceObject: Common.Service.Logic {
    associatedtype T
    var object: T? { get }
}

public protocol CommonServiceCollection: Common.Service.Logic {
    associatedtype T
    var collection: [T] { get }
}

public protocol CommonDurableProcess: Common.Component {}

public protocol CommonDurableTransformation: Common.Durable.Process {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol CommonDurableFormatter: Common.Durable.Process {}

public protocol CommonDurableReader: CommonDurableProcess {}

public protocol CommonDurableWriter: CommonDurableProcess {}

public protocol CommonFactory: CommonComponent {}
