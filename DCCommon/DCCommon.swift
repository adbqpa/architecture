//
//  Common
//

import Foundation

public enum Common {
    public typealias Component = CommonComponent
    public enum Model {
        public typealias Codable = CommonModelCodableProtocol
        public typealias Object = CommonModelObjectProtocol
        public typealias Collection = CommonModelCollectionProtocol
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
        public typealias Formatter = CommonDurableFormatter
    }
    public typealias Factory = CommonFactory
}
