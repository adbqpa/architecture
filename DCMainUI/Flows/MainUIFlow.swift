//
//  dclife
//

import UIKit
import DCCommon
import DCCommonUI

extension Main.UI {
    public class Flow: NSObject, Common.UI.Flow {
        public lazy var navigationController: UINavigationController? = {
            return Flow.storyboard.instantiateInitialViewController() as? UINavigationController
        }()
        public let tabBarController: UITabBarController? = nil
        
        func showSecond(row: Row) {
            let ctrl = Main.UI.Controller.Second.viewController()
            ctrl.service.object = row
            navigationController?.pushViewController(ctrl, animated: true)
        }
    }
}
