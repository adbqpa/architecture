//
//  dclife
//

import Foundation

public protocol CommonDurableProcessProtocol: Common.ComponentProtocol {}

public protocol CommonDurableTransformationProtocol: Common.Durable.ProcessProtocol {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol CommonDurableFormatterProtocol: Common.Durable.ProcessProtocol {}

public protocol CommonDurableReaderProtocol: CommonDurableProcessProtocol {}

public protocol CommonDurableWriterProtocol: CommonDurableProcessProtocol {}

extension Common.Durable {
    public typealias ProcessProtocol = CommonDurableProcessProtocol
    public typealias TransformationProtocol = CommonDurableTransformationProtocol
    public typealias ReaderProtocol = CommonDurableReaderProtocol
    public typealias WriterProtocol = CommonDurableWriterProtocol
    public typealias FormatterProtocol = CommonDurableFormatterProtocol
}
