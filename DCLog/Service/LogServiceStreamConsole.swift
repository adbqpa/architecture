//
//  Log
//

import Foundation

extension Log.Service {
    public class Console: Log.Service.Stream {
        
        public var device = Log.Model.Device.empty {
            didSet { logDevice() }
        }
        public var fields = Log.Model.Event.Field.all
        public var dateFormatter: Log.Durable.Transformation.Date.Formatter = Log.Durable.Transformation.Date.FormatterDefault()
        
        public init() {}
        
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
        
        public func log(message: String) {
            print(message)
        }
        
        func logDevice() {
            log(message: "--------------------------------------------------")
            log(message: "----------------Device Information----------------")
            log(message: "--------------------------------------------------")
            log(message: "UUID: \(device.uuid)")
            log(message: "Name: \(device.name)")
            log(message: "iOS Version: \(device.iOSVersion)")
            log(message: "Application version: \(device.applicationVersion)")
            log(message: "Application build: \(device.applicationBuild)")
            log(message: "--------------------------------------------------")
        }
        
        public func flush() {
            logDevice()
        }
        
    }
}
