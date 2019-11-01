//
//  dclife
//

import Foundation

public extension RunLoop {
    func stop() {
        CFRunLoopStop(getCFRunLoop())
    }
    func wakeUp() {
        CFRunLoopWakeUp(getCFRunLoop())
    }
    func schedule(delay: TimeInterval, repeats: Bool, block: @escaping () -> Void) {
        Timer.scheduledTimer(withTimeInterval: delay, repeats: repeats) { _ in
            block()
        }
    }
}
