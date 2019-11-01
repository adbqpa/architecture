//
//  dclife
//

import UIKit
import DCTemplates

public protocol TemplatesUIControllerObjectProtocol: Templates.UI.ComponentProtocol {
    var flow: Templates.UI.Flow.ObjectProtocol! { get set }
    static var storyboardIdentifier: String { get }
}

public extension Templates.UI.Controller.ObjectProtocol {
    static func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

extension Templates.UI.Controller {
    public typealias ObjectProtocol = TemplatesUIControllerObjectProtocol
    public typealias Object = (UIViewController & ObjectProtocol)
}
