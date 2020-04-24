import UIKit

// 전위 연산자 구현과 사용
prefix operator **

prefix func **(value: Int) -> Int {
    return value * value
}

let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive

//print(sqrtMinusFive)

// 전위 연산자 함수 중복 정의와 사용
prefix func !(value: String) -> Bool {
    return value.isEmpty
}

var stringValue: String = "Jun"
var isEmptyString: Bool = !stringValue
print("⚪️ : \(isEmptyString)")

stringValue = ""
isEmptyString = !stringValue
print("🔵 : \(isEmptyString)")
