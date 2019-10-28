//
//  Common
//

import Foundation

public protocol CommonComponent {}
@objc public protocol CommonComponentObjectiveC: NSObjectProtocol {}

public protocol CommonObject: CommonComponent {
    var uuid: String { get }
}

public protocol CommonCollection: CommonComponent {
    associatedtype Object: CommonObject
    var collection: [Object] { get }
}

public protocol CommonService: CommonComponent {}

public protocol CommonServiceObject: CommonService {
    associatedtype T
    var object: T? { get }
}

public protocol CommonServiceCollection: CommonService {
    associatedtype T
    var collection: [T] { get }
}

public protocol CommonProcess: CommonComponent {}

public protocol CommonProcessTransformation: CommonProcess {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol CommonProcessTransformationReader: CommonProcess {}

public protocol CommonProcessTransformationWriter: CommonProcess {}

public protocol CommonFactory: CommonComponent {}

public enum Common {
    public typealias Component = CommonComponent
    public typealias ComponentObjectiveC = CommonComponentObjectiveC
    public typealias Model = CommonObject
    public typealias Collection = CommonCollection
    public typealias Service = CommonService
    public typealias ServiceObject = CommonServiceObject
    public typealias ServiceCollection = CommonServiceCollection
    public typealias Process = CommonProcess
    public typealias Transformation = CommonProcessTransformation
    public typealias Reader = CommonProcessTransformationReader
    public typealias Writer = CommonProcessTransformationWriter
    public typealias Factory = CommonFactory
}
