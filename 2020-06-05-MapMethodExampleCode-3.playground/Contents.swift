import UIKit

// 다양한 컨테이너 타입에서의 맵의 활용

let alphabetDictionary: [String : String] = ["a":"A", "b":"B"]

var keys: [String] = alphabetDictionary.map { (tuple: (String, String)) -> String in
    return tuple.0
}

keys = alphabetDictionary.map{ $0.0 }

let values: [String] = alphabetDictionary.map { $0.1 }
print(keys) // ["a", "b"]
print(values) // ["A", "B"]

var numberSet: Set<Int> = [1, 2, 3, 4, 5]
let resultSet = numberSet.map{ $0 * 2 }
print(resultSet) // [8, 2, 4, 6, 10]

let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.map{ $0 * 2 }
print(resultInt) // Optional(6)

let range: CountableClosedRange = (0...3)
let resultRange: [Int] = range.map{ $0 * 2 }
print(resultRange) // [0, 2, 4, 6]
