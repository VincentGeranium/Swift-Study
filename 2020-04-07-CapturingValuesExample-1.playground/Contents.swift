import UIKit

func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

// incrementerByTwo 상수에 함수 할당
//let incrementerByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)
//
//let first: Int = incrementerByTwo()
//print(first)
//
//let second: Int = incrementerByTwo()
//print(second)
//
//let third: Int = incrementerByTwo()
//print(third)

// 각각의 incrementer의 동작
let incrementerByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)
print("-----------------------------(incrementerByTwo)------------------------------------")

let first: Int = incrementerByTwo()
print(first)

let second: Int = incrementerByTwo()
print(second)

let third: Int = incrementerByTwo()
print(third)

let anotherIncrementerByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)
print("-----------------------------(anotherIncrementerByTwo)------------------------------------")

let anotherFirst: Int = anotherIncrementerByTwo()
print(anotherFirst)

let anotherSecond: Int = anotherIncrementerByTwo()
print(anotherSecond)

let anotherThird: Int = anotherIncrementerByTwo()
print(anotherThird)

let incrementerByTen: (() -> Int) = makeIncrementer(forIncrement: 10)
print("-----------------------------(incrementerByTen)------------------------------------")

let ten: Int = incrementerByTen()
print(ten)

let twenty: Int = incrementerByTen()
print(twenty)

let thirty: Int = incrementerByTen()
print(thirty)
