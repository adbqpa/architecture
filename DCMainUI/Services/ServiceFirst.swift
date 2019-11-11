//
//  dclife
//

import Foundation
import DCModule
import DCModuleUI

extension Main.UI.Service {
    class First: Module.UI.Service.Collection {
        
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
