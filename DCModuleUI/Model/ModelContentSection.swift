//
//  dclife
//

import DCModule

extension Module.UI.Model.Content {
    public class Section: Module.UI.Model.Component {
        public let header: Module.UI.Controller.Content.ComponentProtocol?
		public let footer: Module.UI.Controller.Content.ComponentProtocol?
        public let rows: [Module.UI.Model.Content.Row]
        public init(
            header: Module.UI.Controller.Content.ComponentProtocol?,
            footer: Module.UI.Controller.Content.ComponentProtocol?,
            rows: [Module.UI.Model.Content.Row]
        ) {
            self.header = header
            self.footer = footer
            self.rows = rows
        }
	}
}
