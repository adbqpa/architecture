//
//  dclife
//

import Foundation
import DCTemplates
import DCTemplatesUI

extension Main.UI.Model {
    public class Row: NSObject, Templates.UI.Model.ObjectProtocol {
        public let name: String
        public init(name: String) {
            self.name = name
        }
    }
}
