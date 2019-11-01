//
//  dclife
//

import UIKit
import DCTemplates
import DCTemplatesUI

extension Main.UI.Flow {
    public class Initial: Templates.UI.Flow.Navigation {
        
        public var parent: Templates.UI.Flow.ObjectProtocol?
        
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
