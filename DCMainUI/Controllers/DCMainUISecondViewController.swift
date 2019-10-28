//
//  dclife
//

import UIKit
import DCCommonUI
import DCCommon

public class DCMainUISecondViewController: UIViewController, Common.UI.Controller {
    
    // MARK: - Common.UI.Controller
    
    public weak var flow: Common.UI.Flow!
    public static var storyboardIdentifier = "second"
    let service = Main.UI.Service.Second()
    
    // MARK: - View LifeCycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }

}
