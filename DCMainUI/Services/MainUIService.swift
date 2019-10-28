//
//  dclife
//

import Foundation
import DCCommonUI
import DCCommon

extension Main.UI.Service {
    class First: NSObject, Common.UI.ServiceCollection {
        
        var collection = [Main.UI.Row]()
        
        override init() {
            super.init()
            collection = [
                Main.UI.Row(name: "Row 1"),
                Main.UI.Row(name: "Row 2")
            ]
        }
        
    }
}
