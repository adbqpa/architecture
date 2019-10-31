//
//  dclife
//

import Foundation

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
