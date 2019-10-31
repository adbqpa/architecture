//
//  dclife
//

import Foundation
import DCCommonUI
import DCCommon

extension Main.UI.Service {
    class First: NSObject, Common.UI.Service.CollectionProtocol {
        
        var collection = [Main.UI.Model.Row]()
        
        override init() {
            super.init()
            collection = [
                Main.UI.Model.Row(name: "Row 1"),
                Main.UI.Model.Row(name: "Row 2")
            ]
        }
        
    }
}
