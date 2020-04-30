import UIKit

// 전위 연산자 구현과 사용
//prefix operator **
//
//prefix func **(value: Int) -> Int {
//    return value * value
//}
//
//let minusFive: Int = -5
//let sqrtMinusFive: Int = **minusFive
//print(sqrtMinusFive)

// 프로토콜과 제네릭을 이용한 전위 연산자 구현과 사용
prefix operator **

prefix func **<T: BinaryInteger> (value: T) -> T {
    return value * value
}

let minusFive: Int = -5
let five: UInt = 5

let sqrtMinusFive: Int = **minusFive
let sqrtFive: UInt = **five

//print(sqrtMinusFive)
//print(sqrtFive)

// 제네릭을 사용하지 않은 swapTwoInts(_:_:) 함수
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA: Int = a
    a = b
    b = temporaryA
}

var numberOne: Int = 5
var numberTwo: Int = 10

swapTwoInts(&numberOne, &numberTwo)
//print("\(numberOne), \(numberTwo)")

// 제네릭을 사용하지 않은 swapTwoStrings(_:_) 함수
func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA: String = a
    a = b
    b = temporaryA
}

var stringOne: String = "A"
var stringTwo: String = "B"

swapTwoStrings(&stringOne, &stringTwo)
//print("\(stringOne), \(stringTwo)")

// 제네릭을 사용하지 않은 swapTwoValues(_:_:) 함수
func swapTwoValues(_ a: inout Any, _ b: inout Any) {
    let temporaryA: Any = a
    a = b
    b = temporaryA
}

var anyOne: Any = 1
var anyTwo: Any = "Two"

swapTwoValues(&anyOne, &anyTwo)
print("\(anyOne), \(anyTwo)") // Two, 1

anyOne = stringOne
anyTwo = stringTwo

swapTwoValues(&anyOne, &anyTwo)
print("\(anyOne), \(anyTwo)") // A, B
print("\(stringOne), \(stringTwo)") // B, A

//swapTwoValues(&stringOne, &stringTwo) // 오류 - Any 외 다른 타입의 전달인자 전달 불가
