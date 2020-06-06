import UIKit

// 리듀스 메서드의 사용

let numbers: [Int] = [1, 2, 3]

print("---------------[sum]------------------")

// 첫 번째 형태인 reduce(_:_:) 메서드의 사용
// 초깃값이 0이고 정수 배열의 모든 값을 더한다.
var sum: Int = numbers.reduce(0) { (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    // 0 + 1
    // 1 + 2
    // 3 + 3
    return result + element
}
print("sum : \(sum)") // 6


print("---------------[subtract]------------------")

// 초깃값이 0이고 정수 배열의 모든 값을 뺀다.
let subtract: Int = numbers.reduce(0, { (result: Int, element: Int) -> Int in
    print("\(result) - \(element)")
    // 0 - 1
    // -1 - 2
    // -3 - 3
    return result - element
})
print("subtract : \(subtract)") // -6

print("---------------[sumFromThree]------------------")

// 초깃값이 3이고 정수 배열의 모든 값을 더한다.
let sumFromThree: Int = numbers.reduce(3) {
    print("\($0) + \($1)")
    // 3 + 1
    // 4 + 2
    // 6 + 3
    return $0 + $1
}
print("sumFromThree : \(sumFromThree)") // 9
