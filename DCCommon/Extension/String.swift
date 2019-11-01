//
//  dclife
//

import Foundation

import Foundation
import CommonCrypto

public extension String {
    var sha255: String {
        var digestData = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
        digestData.withUnsafeMutableBytes { digestBytes in
            let digestBytes: UnsafeMutablePointer<UInt8> = digestBytes.baseAddress!.assumingMemoryBound(to: UInt8.self)
            var messageData = self.data(using:.utf8)!
            messageData.withUnsafeMutableBytes { [count = messageData.count]messageBytes in
                let messageBytes: UnsafeMutablePointer<UInt8> = messageBytes.baseAddress!.assumingMemoryBound(to: UInt8.self)
                CC_SHA256(messageBytes, CC_LONG(count), digestBytes)
            }
        }
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }
}

public extension String {
    static func randomUUID() -> String {
        return "\(random(count: 4))-\(random(count: 4))-\(random(count: 4))-\(random(count: 4))"
    }
    static func random(count: Int) -> String {
        let items = [
            "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q", "r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7", "8","9"
        ]
        var value = ""
        for _ in 0 ..< count {
            value += items[Int(arc4random()%UInt32(items.count))]
        }
        return value
    }
}

