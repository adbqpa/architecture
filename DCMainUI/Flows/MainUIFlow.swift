//
//  dclife
//

import UIKit
import DCCommon
import DCCommonUI

extension Main.UI.Flow {
    public class Default: NSObject, Common.UI.Flow {
        public lazy var navigationController: UINavigationController? = {
            return Default.storyboard.instantiateInitialViewController() as? UINavigationController
        }()
        public let tabBarController: UITabBarController? = nil
        
        func showSecond(row: Main.UI.Model.Row) {
            let ctrl = Main.UI.Controller.Second.viewController()
            ctrl.service.object = row
            navigationController?.pushViewController(ctrl, animated: true)
        }
    }
}
