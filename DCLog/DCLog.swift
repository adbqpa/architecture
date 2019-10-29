//
//  Log
//

import Foundation

public enum Log {
    public enum Model {}
    public enum Service {
        typealias Stream = LogServiceStream
    }
    public enum Durable {
        public enum Transformation {
            public enum Date {
                public typealias Formatter = LogDurableTransformationDateFormatter
            }
        }
    }
}

extension Log {
    public enum Stream {
        case console
        case file(url: URL, maxCount: Int)
    }
}

//extension Log {
//    public var service: Log.Service.Stream {
//        switch self {
//        case .console: return Log.Service.Console()
//        case .url(let url, let maxCount): return Log.Service.Fi
//        }
//    }
//}
