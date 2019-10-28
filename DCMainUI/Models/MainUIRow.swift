//
//  dclife
//

import Foundation
import DCCommon
import DCCommonUI

extension Main.UI.Model {
    public class Row: NSObject, Common.UI.Object {
        public let name: String
        public init(name: String) {
            self.name = name
        }
    }
}
