//
//  dclife
//

import Foundation
import DCTemplates

@objc public protocol TemplatesUIModelObjectProtocol: Templates.UI.ComponentProtocol {}

public protocol TemplatesUIModelCollectionProtocol: Templates.UI.ComponentProtocol {
    associatedtype Object
    var collection: [Object] { get }
}

extension Templates.UI.Model {
    public typealias ObjectProtocol = TemplatesUIModelObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = TemplatesUIModelCollectionProtocol
    public typealias Collection = (NSObject & CollectionProtocol)
}
