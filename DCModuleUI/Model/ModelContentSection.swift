//
//  dclife
//

import DCModule

extension Module.UI.Model.Content {
	public struct Section {
		public let header: Module.UI.Controller.Content.ObjectProtocol?
		public let footer: Module.UI.Controller.Content.ObjectProtocol?
        public let rows: [Module.UI.Model.Content.Row]
        public init(
            header: Module.UI.Controller.Content.ObjectProtocol?,
            footer: Module.UI.Controller.Content.ObjectProtocol?,
            rows: [Module.UI.Model.Content.Row]
        ) {
            self.header = header
            self.footer = footer
            self.rows = rows
        }
	}
}
