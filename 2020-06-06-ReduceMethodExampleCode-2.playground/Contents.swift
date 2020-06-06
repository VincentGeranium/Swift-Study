import UIKit

// 리듀스 메서드 사용 - 2

let numbers: [Int] = [1, 2, 3]

print("---------------[subtractFromThree]------------------")

// 첫 번째 형태인 reduce(_:_:) 메서드의 사용
// 초깃값이 3이고 정수 배열의 모든 값을 뺀다.
var subtractFromThree: Int = numbers.reduce(3) {
    print("\($0) - \($1)")
    // 3 - 1
    // 2 - 2
    // 0 - 3
    return $0 - $1
}
print(subtractFromThree) // -3

print("---------------[reduceNames]------------------")

// 문자열 배열을 reduce(_:_:) 메서드를 이용해 연결시킨다.
let names: [String] = ["Vincent", "Harry", "Ron", "Hermione"]

let reduceNames: String = names.reduce("Jun's friend : ") {
    return $0 + " , " + $1
}

print(reduceNames) // Jun's friend :  , Vincent , Harry , Ron , Hermione

