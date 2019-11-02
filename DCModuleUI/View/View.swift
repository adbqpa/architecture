//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIViewComponentProtocol: ModuleUIComponentProtocol {}

public protocol ModuleUIViewCellComponentProtocol: ModuleUIViewComponentProtocol {
    associatedtype Object
    func adjust(to object: Object)
}
