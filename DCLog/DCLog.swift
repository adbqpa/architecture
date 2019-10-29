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
