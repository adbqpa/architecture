//
//  dclife
//

import UIKit
import DCCommon
import DCCommonUI

extension Main.UI.Flow {
    public class Initial: Common.UI.Flow.Navigation {
        
        public var parent: Common.UI.Flow.ObjectProtocol?
        
        public lazy var navigationController: UINavigationController? = {
            return Initial.storyboard.instantiateInitialViewController() as? UINavigationController
        }()
        
        func showSecond(row: Main.UI.Model.Row) {
            let ctrl = Main.UI.Controller.Second.viewController()
            ctrl.service.object = row
            navigationController?.pushViewController(ctrl, animated: true)
        }
    }
}
