//
//  Log
//

import Foundation
import DCCommon

public protocol LogServiceStream: Common.Service.LogicProtocol {
    var fields: [Log.Model.Event.Field] { get set }
    var dateFormatter: Log.Durable.Transformation.Date.Formatter { get set }
    var device: Log.Model.Device { get set }
    func log(event: Log.Model.Event)
    func log(message: String)
    func flush()
}
