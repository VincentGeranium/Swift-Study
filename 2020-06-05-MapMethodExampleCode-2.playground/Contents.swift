import UIKit

// 클로저 표현의 간략화

let numbers: [Int] = [0, 1, 2, 3, 4]

// 기본 클로저 표현식 사용
var doubledNumbers = numbers.map { (number: Int) -> Int in
    return number * 2
}

// 매개변수 및 반환 타입 생략
doubledNumbers = numbers.map({ return $0 * 2})
print("매개변수 및 반환 타입 생략 : \(doubledNumbers)") // [0, 2, 4, 6, 8]

// 반환 키워드 생략
doubledNumbers = numbers.map({ $0 * 2})
print("반환 키워드 생략 : \(doubledNumbers)") // [0, 2, 4, 6, 8]

// 후행 클로저 사용
doubledNumbers = numbers.map { $0 * 2 }
print("후행 클로저 사용 : \(doubledNumbers)") // [0, 2, 4, 6, 8]

// 클로저의 반복 사용

let evenNumbers: [Int] = [0, 2, 4, 6, 8]
let oddNumbers: [Int] = [0, 1, 2, 3, 5, 7]
let multiplyTwo: (Int) -> Int = { $0 * 2 }

let doubledEvenNumbers = evenNumbers.map(multiplyTwo)
print("클로저의 반복 사용 doubledEvenNumbers : \(doubledEvenNumbers)") // [0, 4, 8, 12, 16]

let doubledOddNumbers = oddNumbers.map(multiplyTwo)
print("클로저의 반복 사용 doubledOddNumbers : \(doubledOddNumbers)") // [0, 2, 4, 6, 10, 14]
