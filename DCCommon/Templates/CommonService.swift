//
//  dclife
//

import Foundation

public protocol CommonServiceLogic: Common.Component {}

public protocol CommonServiceObject: Common.Service.Logic {
    associatedtype T
    var object: T? { get }
}

public protocol CommonServiceCollection: Common.Service.Logic {
    associatedtype T
    var collection: [T] { get }
}
