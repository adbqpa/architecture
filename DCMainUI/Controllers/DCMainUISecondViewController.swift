//
//  dclife
//

import UIKit
import DCTemplates
import DCTemplatesUI

public class DCMainUISecondViewController: Templates.UI.Controller.Object {
    
    // MARK: - Common.UI.Controller.ObjectProtocol
    
    public weak var flow: Templates.UI.Flow.ObjectProtocol!
    
    public static var storyboardIdentifier: String { return "second" }

    let service = Main.UI.Service.Second()
    
    // MARK: - View LifeCycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = service.object?.name
    }

}
