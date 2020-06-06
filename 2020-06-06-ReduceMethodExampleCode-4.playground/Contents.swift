import UIKit

// 맵, 필터, 리듀스 메서드의 연계 사용

let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7]

// 짝수를 걸러내어 각 값에 3을 곱해준 후 모든 값을 더한다.
var result: Int = numbers.filter{ $0 % 2 == 0 }.map{ $0 * 3 }.reduce(0) { (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    // 0 + 6
    // 6 + 12
    // 18 + 18
    return result + element
}

print(result) // 36

// for - in 구문 사용 시
result = 0

for number in numbers {
    guard number % 2 == 0 else {
        continue
    }
    
    result += number * 3
}

print(result) // 36
