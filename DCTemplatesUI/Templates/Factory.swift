//
//  dclife
//

import Foundation
import DCTemplates

@objc public protocol TemplatesUIFactory: Templates.UI.ComponentProtocol {}

extension Templates.UI {
    public typealias Factory = TemplatesUIFactory
}
