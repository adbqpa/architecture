//
//  Log
//

import Foundation

extension Log.Durable {
    public class Writer<T> {
        
        public let maxCount: Int
        let representationBlock: ([T]) -> Data?
        let fileURLBlock: () -> URL
        var list = [T]()
        var fileURL: URL?
        let queue = OperationQueue()
        
        public init(maxCount: Int, fileURL: @escaping () -> URL, representation: @escaping ([T]) -> Data?) {
            self.maxCount = maxCount
            self.fileURLBlock = fileURL
            self.representationBlock = representation
        }
        
        public func append(object: T) {
            if fileURL == nil {
                fileURL = fileURLBlock()
            }
            list.append(object)
            if list.count == maxCount {
                flush()
            }
        }
        
        public func flush() {
            let items = self.list
            let url = self.fileURL
            list.removeAll()
            fileURL = nil
            queue.addOperation {
                if let data = self.representationBlock(items), let url = url {
                    try? data.write(to: url)
                }
            }
        }
        
    }
}
