//
//  Log
//

import Foundation
import DCModule

public protocol LogServiceStream: Module.Service.LogicProtocol {
    var fields: [Log.Model.Event.Field] { get set }
    var dateFormatter: Log.Durable.Transformation.Date.Formatter { get set }
    var device: Log.Model.Device { get set }
    func log(event: Log.Model.Event)
    func log(message: String)
    func flush()
}
