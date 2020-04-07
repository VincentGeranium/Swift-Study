import UIKit

// 연산자 함수를 클로저의 역활로 사용
var alphabet: [String] = ["A", "C", "B", "F"]

let reversedAlphabet: [String] = alphabet.sorted(by: >)

print(reversedAlphabet)
