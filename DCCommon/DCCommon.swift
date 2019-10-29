//
//  Common
//

import Foundation

public protocol CommonComponent {}
@objc public protocol CommonComponentObjectiveC: NSObjectProtocol {}

public protocol CommonModelCodable: Codable, CommonComponent {}

public protocol CommonModelObject: CommonModelCodable {
    associatedtype UUID
    var uuid: UUID { get }
}

public protocol CommonModelCollection: CommonModelCodable {
    associatedtype Object: CommonModelCodable
    var collection: [Object] { get }
}

public protocol CommonServiceLogic: CommonComponent {}

public protocol CommonServiceObject: CommonServiceLogic {
    associatedtype T
    var object: T? { get }
}

public protocol CommonServiceCollection: CommonServiceLogic {
    associatedtype T
    var collection: [T] { get }
}

public protocol CommonDurableProcess: CommonComponent {}

public protocol CommonDurableTransformation: CommonDurableProcess {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol CommonDurableReader: CommonDurableProcess {}

public protocol CommonDurableWriter: CommonDurableProcess {}

public protocol CommonFactory: CommonComponent {}

public enum Common {
    public typealias Component = CommonComponent
    public typealias ComponentObjectiveC = CommonComponentObjectiveC
    public enum Model {
        public typealias Codable = CommonModelCodable
        public typealias Object = CommonModelObject
        public typealias Collection = CommonModelCollection
    }
    public enum Service {
        public typealias Logic = CommonServiceLogic
        public typealias Object = CommonServiceObject
        public typealias Collection = CommonServiceCollection
    }
    public enum Durable {
        public typealias Process = CommonDurableProcess
        public typealias Transformation = CommonDurableTransformation
        public typealias Reader = CommonDurableReader
        public typealias Writer = CommonDurableWriter
    }
    public typealias Factory = CommonFactory
}
