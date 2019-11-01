//
//  dclife
//

import Foundation

public protocol ModuleDurableProcessProtocol: Module.ComponentProtocol {}

public protocol ModuleDurableTransformationProtocol: Module.Durable.ProcessProtocol {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol ModuleDurableFormatterProtocol: Module.Durable.ProcessProtocol {}

public protocol ModuleDurableReaderProtocol: ModuleDurableProcessProtocol {}

public protocol ModuleDurableWriterProtocol: ModuleDurableProcessProtocol {}

extension Module.Durable {
    public typealias ProcessProtocol = ModuleDurableProcessProtocol
    public typealias TransformationProtocol = ModuleDurableTransformationProtocol
    public typealias ReaderProtocol = ModuleDurableReaderProtocol
    public typealias WriterProtocol = ModuleDurableWriterProtocol
    public typealias FormatterProtocol = ModuleDurableFormatterProtocol
}
