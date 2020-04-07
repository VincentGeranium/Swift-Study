import UIKit

// 암시적 반환 표현의 사용
var alphabet: [String] = ["A", "C", "F", "E"]

let reversedAlphabet: [String] = alphabet.sorted { $0 > $1 }

print(reversedAlphabet)
