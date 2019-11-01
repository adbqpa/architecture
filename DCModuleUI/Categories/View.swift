//
//  dclife
//

import UIKit
import DCModule

public protocol ModuleUIViewProtocol: ModuleUIComponentProtocol {}

public protocol ModuleUICellProtocol: ModuleUIViewProtocol {
    associatedtype Object
    func adjust(to object: Object)
}

extension Module.UI.View {
    public typealias ViewProtocol = ModuleUIViewProtocol
    public typealias View = (UIView & ViewProtocol)
    public typealias Control = (UIControl & ViewProtocol)
    public enum Cell {
        public typealias CellProtocol = ModuleUICellProtocol
        public typealias Collection = (UICollectionViewCell & CellProtocol)
        public typealias Table = (UITableViewCell & CellProtocol)
    }
}
