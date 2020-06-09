import UIKit

// addThree 함수
func addThree(_ num: Int) -> Int {
    return num + 3
}

Optional(2).map(addThree)

//print(Optional(2).map(addThree))

// 옵셔널에 맵 메서드와 클로저의 사용

var value: Int? = 2

value.map{ $0 + 3 }
print(value.map{ $0 + 3 }) // Optional(5)

value = nil

value.map{ $0 + 3 }
print(value.map{ $0 + 3 }) // nil == Optional.none
