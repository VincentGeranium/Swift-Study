import UIKit

// 실패 가능한 Int 이니셜라이저

var stringValue: String = "123"
var integerValue: Int? = Int(stringValue)

print(integerValue) // Optional(123)

stringValue = "A123"
integerValue = Int(stringValue)

print(integerValue) // nil == Optional.none
