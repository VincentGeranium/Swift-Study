import UIKit

// 제네릭을 사용한 swapTwoValues(_:_:) 함수
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tempA: T = a
    a = b
    b = tempA
}

var numberOne: Int = 1
var numberTwo: Int = 2

swapTwoValues(&numberOne, &numberTwo)
print("\(numberOne), \(numberTwo)") // 2, 1

var stringOne: String = "A"
var stringTwo: String = "B"

swapTwoValues(&stringOne, &stringTwo)
print("\(stringOne), \(stringTwo)") // B, A

var anyOne: Any = 1
var anyTwo: Any = "Two"

swapTwoValues(&anyOne, &anyTwo)
print("\(anyOne), \(anyTwo)") // Two, 1

// 오류 - 같은 타입끼리만 교환 가능
// error: cannot convert value of type 'String' to expected argument type 'Int'
//swapTwoValues(&numberOne, &stringOne)
