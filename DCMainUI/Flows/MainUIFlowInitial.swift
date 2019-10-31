//
//  dclife
//

import UIKit
import DCCommon
import DCCommonUI

extension Main.UI.Flow {
    public class Initial: NSObject, Common.UI.Flow.ObjectProtocol {
        
        public lazy var navigationController: UINavigationController? = {
            return Initial.storyboard.instantiateInitialViewController() as? UINavigationController
        }()
        public let tabBarController: UITabBarController? = nil
        public let viewController: UIViewController? = nil
        
        func showSecond(row: Main.UI.Model.Row) {
            let ctrl = Main.UI.Controller.Second.viewController()
            ctrl.service.object = row
            navigationController?.pushViewController(ctrl, animated: true)
        }
    }
}
