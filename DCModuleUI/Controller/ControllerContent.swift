//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIControllerContentComponentProtocol: Module.UI.Controller.Component {
    var view: UIView! { get }
    var preferredContentSize: CGSize { get }
    var reloadHandler: (() -> Void)? { get set }
}

public protocol ModuleUIControllerContentObjectProtocol: Module.UI.Controller.Content.ComponentProtocol {
    var object: Module.UI.Model.ComponentProtocol! { get set }
    func reload()
}

public protocol ModuleUIControllerContentCollectionProtocol: Module.UI.Controller.Content.ComponentProtocol {
    var selectionHandler: ((Int) -> Void)? { get set }
    func setSelected(index: Int, animated: Bool)
}
