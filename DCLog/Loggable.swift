//
//  Log
//

import Foundation

public protocol Loggable {
    var identifier: String { get }
    var prefix: String { get }
    var parent: Loggable? { get }
    init(identifier: String, prefix: String, parent: Loggable?)
}

public extension Loggable {
    var hash: String { return identifier.sha255 }
    var domain: String {
        var items = [String]()
        items.append(identifier)
        var parent = self.parent
        while parent != nil {
            let identifier = parent?.identifier ?? ""
            items.append(identifier.count > 0 ? identifier : "<empty>")
            if parent?.parent == nil, let prefix = parent?.prefix {
                items.append(prefix)
            }
            parent = parent?.parent
        }
        if items.count == 1 {
            items.append(prefix)
        }
        return items.reversed().joined(separator: ".")
    }
}

public extension Loggable {
    func event(message: String, object: [String:Any]? = nil, level: Log.Model.Event.Level = .debug) -> Log.Model.Event {
        return Log.Model.Event(message: message, object: object, level: level)
    }
    func error(message: String, code: Int = 0) -> Error {
        return NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey:message])
    }
    func event(error: NSError) -> Log.Model.Event {
        return Log.Model.Event(domain: domain, message: error.localizedDescription, code: error.code, level: .error)
    }
}

public extension Loggable {
    func with(identifier: String = "", prefix: String = "") -> Self {
        let identifier = identifier.count > 0 ? identifier : self.identifier
        return Self(identifier: identifier, prefix: prefix, parent: self)
    }
    static func root(identifier: String, prefix: String = "") -> Self {
        return Self(identifier: identifier, prefix: prefix, parent: nil)
    }
    func child<T:Loggable>(identifier: String, prefix: String = "") -> T {
        return T(identifier: identifier, prefix: prefix, parent: parent)
    }
}

public extension Loggable {
    func subDomain(_ value: String) -> String {
        return domain + "." + value
    }
    func localDomain(_ value: String = "") -> String {
        if value.count > 0 {
            return prefix + "." + identifier + "." + value
        } else {
            return prefix + "." + identifier
        }
    }
}

public extension Loggable {
    func error(text: String, code: Int = -1, userInfo: [String:Any] = [:]) -> NSError {
        var userInfo = userInfo
        userInfo[NSLocalizedDescriptionKey] = text
        return NSError(domain: domain, code: code, userInfo: userInfo)
    }
}

public struct LoggableKey: Loggable {
    public let identifier: String
    public let prefix: String
    public let parent: Loggable?
    public init(identifier: String, prefix: String = "", parent: Loggable? = nil) {
        self.identifier = identifier
        self.parent = parent
        self.prefix = prefix
    }
}

public protocol LoggableContainer {
    associatedtype LoggableType
    var key: LoggableType { get }
    init(parent: LoggableType?)
}
