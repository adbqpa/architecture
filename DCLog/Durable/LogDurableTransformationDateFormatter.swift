//
//  Log
//

import Foundation
import DCTemplates

public protocol LogDurableTransformationDateFormatter: Templates.Durable.FormatterProtocol {
    var formatter: Foundation.DateFormatter { get }
}

public extension LogDurableTransformationDateFormatter {
    func string(from date: Date) -> String {
        return formatter.string(from: date)
    }
    func date(from string: String) -> Date? {
        return formatter.date(from: string)
    }
}

extension Log.Durable.Transformation.Date {
    class FormatterDefault: Formatter {
        public lazy var formatter: Foundation.DateFormatter = {
            let df = Foundation.DateFormatter()
            df.dateFormat = "dd.MM.yyy HH:mm:ss"
            return df
        }()
    }
}
