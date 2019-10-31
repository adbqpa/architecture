//
//  dclife
//

import UIKit
import DCCommonUI
import DCCommon

public class DCMainUISecondViewController: UIViewController, Common.UI.Controller.ObjectProtocol {
    
    // MARK: - Common.UI.Controller.ObjectProtocol
    
    public weak var flow: Common.UI.Flow.ObjectProtocol!
    
    public static var storyboardIdentifier: String { return "second" }

    let service = Main.UI.Service.Second()
    
    // MARK: - View LifeCycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }

}
