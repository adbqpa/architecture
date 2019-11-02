//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIControllerObjectProtocol: Module.UI.ComponentProtocol {
    var flow: Module.UI.Flow.ObjectProtocol! { get set }
    static var storyboardIdentifier: String { get }
}

public extension Module.UI.Controller.ObjectProtocol {
    static func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

extension Module.UI.Controller {
    public typealias ObjectProtocol = ModuleUIControllerObjectProtocol
    public typealias Object = (UIViewController & ObjectProtocol)
}
