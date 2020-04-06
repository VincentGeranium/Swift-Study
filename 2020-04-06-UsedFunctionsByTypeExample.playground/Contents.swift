import UIKit

typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// var mathFunction: (Int, Int) -> Int = addTwoInts 와 동일한 표현이다.
var mathFunction: CalculateTwoInts = addTwoInts

// 2 + 5 = 7
print(mathFunction(2,5))

mathFunction = multiplyTwoInts

// 2 * 5 = 10
print(mathFunction(2,5))

// 전달인자로 함수를 전달받는 함수
func printMathResult(_ mathFunction: CalculateTwoInts, _ a: Int, _ b: Int) {
    print("Result : \(mathFunction(a, b))")
}

// 3 + 5 = 8
printMathResult(addTwoInts, 3, 5)

// 특정 조건에 따라 적절한 함수를 반환해주는 함수
func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInts {
    return toAdd ? addTwoInts : multiplyTwoInts
}

// 3 * 5 = 15
printMathResult(chooseMathFunction(false), 3, 5)
