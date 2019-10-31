//
//  dclife
//

import UIKit
import DCCommon

public protocol CommonUIViewProtocol: CommonUIComponentProtocol {}

public protocol CommonUICellProtocol: CommonUIViewProtocol {
    associatedtype Object
    func adjust(to object: Object)
}

extension Common.UI.View {
    public typealias ViewProtocol = CommonUIViewProtocol
    public typealias View = (UIView & ViewProtocol)
    public typealias Control = (UIControl & ViewProtocol)
    public enum Cell {
        public typealias CellProtocol = CommonUICellProtocol
        public typealias Collection = (UICollectionViewCell & CellProtocol)
        public typealias Table = (UITableViewCell & CellProtocol)
    }
}
