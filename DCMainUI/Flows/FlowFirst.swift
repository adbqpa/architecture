//
//  dclife
//

import Foundation
import DCModule
import DCModuleUI

extension Main.UI.Flow {
    class First: Module.UI.Flow.Component {
        func showSecond(row: Main.UI.Model.Row) {
            (parent as? Main.UI.Flow.Navigation)?.showSecond(row: row)
        }
    }
}
