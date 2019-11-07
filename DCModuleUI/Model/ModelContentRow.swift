//
//  dclife
//

import Foundation
import DCModule

extension Module.UI.Model.Content {
    public class Row: Module.UI.Model.Component {
        public let kind: Kind
        public let content: Module.UI.Controller.Content.ComponentProtocol
        public init(kind: Kind, content: Module.UI.Controller.Content.ComponentProtocol) {
            self.kind = kind
            self.content = content
        }
    }
}

extension Module.UI.Model.Content.Row {
    public struct Kind: RawRepresentable {
        public let rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

