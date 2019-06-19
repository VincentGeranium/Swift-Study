import UIKit

extension String {
    
    subscript(appendValue: String) -> String {
        return self + appendValue
    }
    
    subscript(repeatCount: UInt) -> String {
        var str: String = ""
        for _ in 0..<repeatCount {
            str += self
        }
        return str
    }
}

print("abc"["def"])
print("asd"[3])
