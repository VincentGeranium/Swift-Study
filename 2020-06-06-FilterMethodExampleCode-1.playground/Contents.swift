import UIKit

// 필터 메서드의 사용

let numbers: [Int] = [0, 1, 2, 3, 4, 5]

let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}

print("evenNumbers : \(evenNumbers)") // [0, 2, 4]

let oddNumbers: [Int] = numbers.filter{ $0 % 2 != 0 }

print("oddNumber : \(oddNumbers)") // [1, 3, 5]

// 맵과 필터 메서드의 연계 사용

let mappedNumbers: [Int] = numbers.map{ $0 + 3 }
print("mappedNumbers : \(mappedNumbers)") // [3, 4, 5, 6, 7, 8]

let filterEvenNumbers: [Int] = mappedNumbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print("filterEvenNumbers : \(filterEvenNumbers)") // [4, 6, 8]

// mappedNumbers를 굳이 여러 번 사용할 필요가 없다면 메서드를 체인처럼 연결하여 사용할 수 있다.
let filterOddNumbers: [Int] = numbers.map{ $0 + 3 }.filter{ $0 % 2 != 0 }
print("filterOddNumbers : \(filterOddNumbers)") // [3, 5, 7]

