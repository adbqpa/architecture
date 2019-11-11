//
//  dclife
//


import UIKit
import DCModule

extension Module {
    public enum UI {
        public enum Flow {}
        public enum Model {
            public typealias ComponentProtocol = ModuleUIModelComponentProtocol
            public typealias Component = (NSObject & ComponentProtocol)
            public enum Content {}
        }
        public enum Service {
            public typealias ComponentProtocol = ModuleUIServiceComponentProtocol
            public typealias Component = (NSObject & ComponentProtocol)
            public typealias ObjectProtocol = ModuleUIServiceObjectProtocol
            public typealias Object = (NSObject & ObjectProtocol)
            public typealias CollectionProtocol = ModuleUIServiceCollectionProtocol
            public typealias Collection = (NSObject & CollectionProtocol)
        }
        public enum View {
            public typealias ComponentProtocol = ModuleUIViewComponentProtocol
            public typealias Component = (UIView & ComponentProtocol)
            public typealias Control = (UIControl & ComponentProtocol)
            public enum Cell {
                public typealias ComponentProtocol = ModuleUIViewCellComponentProtocol
                public typealias Collection = (UICollectionViewCell & ComponentProtocol)
                public typealias Table = (UITableViewCell & ComponentProtocol)
            }
            public enum Content {
                public enum Cell {
                    public typealias Table = ViewContentTableCell
                    public typealias Collection = ViewContentCollectionCell
                }
            }
        }
        public enum Controller {
            public typealias Component = ModuleUIControllerComponent
            public enum Content {
                public typealias ComponentProtocol = ModuleUIControllerContentComponentProtocol
                public typealias Component = (UIViewController & ComponentProtocol)
                public typealias ObjectProtocol = ModuleUIControllerContentObjectProtocol
                public typealias Object = (UIViewController & ObjectProtocol)
                public typealias CollectionProtocol = ModuleUIControllerContentCollectionProtocol
                public typealias Collection = (UIViewController & CollectionProtocol)
            }
        }
    }
}
