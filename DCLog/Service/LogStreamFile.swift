//
//  Log
//

import Foundation

extension Log.Service {
    public class File: Log.Service.Stream {
        
        public var device = Log.Model.Device.empty
        public var fields = Log.Model.Event.Field.all
        public var dateFormatter: Log.Durable.Transformation.Date.Formatter = Log.Durable.Transformation.Date.FormatterDefault()
        
        public let url: URL
        
        var runLoop: RunLoop!
        
        private let queue = OperationQueue()
        private var writer: Log.Durable.Writer<String>!
        
        public init(url: URL, maxCount: Int) {
            self.url = url
            writer = Log.Durable.Writer<String>(maxCount: maxCount, fileURL: { () -> URL in
                return self.url.appendingPathComponent(self.dateFormatter.string(from: Date())).appendingPathExtension("log")
            }, representation: { (values) -> Data? in
                var values = values
                values.insert(self.deviceString(), at: 0)
                return values.joined(separator: "\n").data(using: .utf8)
            })
        }
        
        func deviceString() -> String {
            var value = ""
            value += "--------------------------------------------------\n"
            value += "----------------Device Information----------------\n"
            value += "--------------------------------------------------\n"
            value += "UUID: \(device.uuid)\n"
            value += "Name: \(device.name)\n"
            value += "iOS Version: \(device.iOSVersion)\n"
            value += "Application version: \(device.applicationVersion)\n"
            value += "Application build: \(device.applicationBuild)\n"
            value += "--------------------------------------------------"
            return value
        }
        
        public func log(message: String) {
            writer.append(object: message)
        }
        
        public func log(event: Log.Model.Event) {
            if fields.contains(.object), let object = event.object {
                log(message: "--------------------------------------------------")
                log(message: event.string(for: fields, dateFormatter: dateFormatter))
                log(message: object)
                log(message: "--------------------------------------------------")
            } else {
                log(message: event.string(for: fields, dateFormatter: dateFormatter))
            }
        }
        
        public func flush() {
            writer.flush()
        }
        
    }
}
