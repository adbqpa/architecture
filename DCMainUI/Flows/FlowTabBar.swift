//
//  dclife
//

import UIKit
import DCModule
import DCModuleUI

extension Main.UI.Flow {
    public class TabBar: Module.UI.Flow.TabBar {
        public override init() {
            super.init(flows: [
                Main.UI.Flow.Navigation(),
                Main.UI.Flow.Navigation()
            ])
        }
    }
}
