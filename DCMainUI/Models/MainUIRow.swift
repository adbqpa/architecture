//
//  dclife
//

import Foundation
import DCModule
import DCModuleUI

extension Main.UI.Model {
    public class Row: Module.UI.Model.Object {
        public let name: String
        public init(name: String) {
            self.name = name
        }
    }
}
