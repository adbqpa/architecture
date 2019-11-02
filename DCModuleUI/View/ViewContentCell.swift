//
//  dclife
//

import UIKit
import DCModule

public class ViewContentTableCell: UITableViewCell {
    private var view: UIView?
    public var kind = Module.UI.Model.Content.Row.Kind(rawValue: "unknown")
    public func adjust(to row: Module.UI.Model.Content.Row) {
        view?.removeFromSuperview()
        kind = row.kind
        row.content.view.frame = CGRect(origin: CGPoint.zero, size: contentView.frame.size)
        row.content.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        row.content.view.translatesAutoresizingMaskIntoConstraints = true
        contentView.addSubview(row.content.view)
        view = row.content.view
    }
}

public class ViewContentCollectionCell: UICollectionViewCell {
    private var view: UIView?
    public var kind = Module.UI.Model.Content.Row.Kind(rawValue: "unknown")
    public func adjust(to row: Module.UI.Model.Content.Row) {
        view?.removeFromSuperview()
        kind = row.kind
        row.content.view.frame = CGRect(origin: CGPoint.zero, size: contentView.frame.size)
        row.content.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        row.content.view.translatesAutoresizingMaskIntoConstraints = true
        contentView.addSubview(row.content.view)
        view = row.content.view
    }
}
