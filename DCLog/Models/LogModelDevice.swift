//
//  Log
//

import Foundation
import DCCommon

extension Log.Model {
    public struct Device: Common.Model.Codable {
        public let uuid: String
        public let name: String
        public let iOSVersion: String
        public let applicationVersion: String
        public let applicationBuild: String
        public init(uuid: String, name: String, iOSVersion: String, applicationVersion: String, applicationBuild: String) {
            self.uuid = uuid
            self.name = name
            self.iOSVersion = iOSVersion
            self.applicationBuild = applicationBuild
            self.applicationVersion = applicationVersion
        }
    }
}

public extension Log.Model.Device {
    var isEmpty: Bool { return uuid == "" }
    static let empty = Log.Model.Device(uuid: "", name: "", iOSVersion: "", applicationVersion: "", applicationBuild: "")
}
