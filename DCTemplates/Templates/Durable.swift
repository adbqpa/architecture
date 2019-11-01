//
//  dclife
//

import Foundation

public protocol TemplatesDurableProcessProtocol: Templates.ComponentProtocol {}

public protocol TemplatesDurableTransformationProtocol: Templates.Durable.ProcessProtocol {
    associatedtype Data
    associatedtype Object
    func from(object: Object) -> Data?
    func object(data: Object) -> Object?
}

public protocol TemplatesDurableFormatterProtocol: Templates.Durable.ProcessProtocol {}

public protocol TemplatesDurableReaderProtocol: TemplatesDurableProcessProtocol {}

public protocol TemplatesDurableWriterProtocol: TemplatesDurableProcessProtocol {}

extension Templates.Durable {
    public typealias ProcessProtocol = TemplatesDurableProcessProtocol
    public typealias TransformationProtocol = TemplatesDurableTransformationProtocol
    public typealias ReaderProtocol = TemplatesDurableReaderProtocol
    public typealias WriterProtocol = TemplatesDurableWriterProtocol
    public typealias FormatterProtocol = TemplatesDurableFormatterProtocol
}
