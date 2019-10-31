//
//  dclife
//

import UIKit
import DCCommon

public protocol CommonUIControllerObjectProtocol: CommonUIComponentProtocol {
    var flow: Common.UI.Flow.ObjectProtocol! { get set }
    static var storyboardIdentifier: String { get }
}

public extension Common.UI.Controller.ObjectProtocol {
    static func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

extension Common.UI.Controller {
    public typealias ObjectProtocol = CommonUIControllerObjectProtocol
    public typealias Object = (UIViewController & ObjectProtocol)
}
