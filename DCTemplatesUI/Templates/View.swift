//
//  dclife
//

import UIKit
import DCTemplates

public protocol TemplatesUIViewProtocol: TemplatesUIComponentProtocol {}

public protocol TemplatesUICellProtocol: TemplatesUIViewProtocol {
    associatedtype Object
    func adjust(to object: Object)
}

extension Templates.UI.View {
    public typealias ViewProtocol = TemplatesUIViewProtocol
    public typealias View = (UIView & ViewProtocol)
    public typealias Control = (UIControl & ViewProtocol)
    public enum Cell {
        public typealias CellProtocol = TemplatesUICellProtocol
        public typealias Collection = (UICollectionViewCell & CellProtocol)
        public typealias Table = (UITableViewCell & CellProtocol)
    }
}
