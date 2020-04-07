import UIKit

// 클로저의 매개변수 타입과 반환 타입을 생략하여 표현할 수 있다.
var alphabet: [String] = ["A", "B", "F", "C"]

let reversedAlphabet: [String] = alphabet.sorted { (first, second) in
    return first > second
}

print(reversedAlphabet)
