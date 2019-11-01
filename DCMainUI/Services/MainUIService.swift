//
//  dclife
//

import Foundation
import DCTemplates
import DCTemplatesUI

extension Main.UI.Service {
    class First: Templates.UI.Service.Collection {
        
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
