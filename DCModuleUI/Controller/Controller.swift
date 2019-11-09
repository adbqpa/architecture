//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIControllerComponentProtocol: Module.UI.ComponentProtocol {
    var flow: Module.UI.Flow.ComponentProtocol! { get set }
    static var storyboardIdentifier: String { get }
}

public extension Module.UI.Controller.ComponentProtocol {
    static func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

extension Module.UI.Controller {
    public typealias ComponentProtocol = ModuleUIControllerComponentProtocol
    public typealias Component = (UIViewController & ComponentProtocol)
}
