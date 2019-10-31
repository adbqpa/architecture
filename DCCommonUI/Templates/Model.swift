//
//  dclife
//

import Foundation
import DCCommon

@objc public protocol CommonUIModelObjectProtocol: Common.UI.ComponentProtocol {}

public protocol CommonUIModelCollectionProtocol: Common.UI.ComponentProtocol {
    associatedtype Object
    var collection: [Object] { get }
}

extension Common.UI.Model {
    public typealias ObjectProtocol = CommonUIModelObjectProtocol
    public typealias Object = (NSObject & ObjectProtocol)
    public typealias CollectionProtocol = CommonUIModelCollectionProtocol
}
