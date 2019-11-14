//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

extension Main.UI.Flow {
    public class Navigation: Module.UI.Flow.Navigation {
        
        public init() {
            super.init(root: Main.UI.Flow.First())
        }
        
        func showSecond(row: Main.UI.Model.Row) {
            let flow = Main.UI.Flow.Second()
            (flow.viewController as! Main.UI.Controller.Second).service.object = row
            show(flow: flow)
        }
    }
}
