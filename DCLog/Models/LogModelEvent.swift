//
//  Common
//

import Foundation
import DCModule
import DCCommon

extension Log.Model {
    public struct Event: Module.Model.ObjectProtocol {
        public let uuid = String.randomUUID()
        public let level: Level
        public let domain: String
        public let date = Date()
        public let message: String?
        public let code: Int
        public let object: String?
        public init(domain: String = "com.application", message: String? = nil, code: Int = 0, object: [String:Any]? = nil, level: Level = .debug) {
            self.level = level
            self.domain = domain
            self.message = message
            self.code = code
            if
                let object = object,
                let data = try? JSONSerialization.data(withJSONObject: object, options: .prettyPrinted),
                let string = String(data: data, encoding: .utf8) {
                self.object = string
            } else {
                self.object = nil
            }
        }
    }
}

extension Log.Model.Event {
    public struct Level: RawRepresentable, Codable {
        public let rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

extension Log.Model.Event.Level {
    public static let debug = Log.Model.Event.Level(rawValue: "debug")
    public static let info = Log.Model.Event.Level(rawValue: "info")
    public static let error = Log.Model.Event.Level(rawValue: "error")
}

extension Log.Model.Event {
    public enum Field {
        case level
        case domain
        case date
        case message
        case code
        case object
        public static let all: [Field] = [.level, .domain, .date, .code, .message, .object]
    }
}

public extension Log.Model.Event {
    var error: NSError {
        return NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey:message ?? ""])
    }
    func string(for fields: [Field], dateFormatter: Log.Durable.Transformation.Date.Formatter) -> String {
        let values: [String] = fields.map { (field) in
            switch field {
            case .date:     return "[\(dateFormatter.string(from: date))]"
            case .domain:   return "[\(domain)]"
            case .message:  return message == nil ? "" : "\(message ?? "")"
            case .level:    return "[\(level.rawValue)]"
            case .object:   return ""
            case .code:     return code == 0 ? "" : "[Code: \(code)]"
            }
        }
        var result = [String]()
        for value in values {
            if value != "" {
                result.append(value)
            }
        }
        return result.joined(separator: " ")
    }
}
