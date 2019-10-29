//
//  Log
//

import Foundation

public protocol LogServiceStream {
    var fields: [Log.Model.Event.Field] { get set }
    var dateFormatter: Log.Durable.Transformation.Date.Formatter { get set }
    var device: Log.Model.Device { get set }
    func log(event: Log.Model.Event)
    func log(message: String)
    func flush()
}
