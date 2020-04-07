import UIKit

// 단축 인자 이름을 사용한 표현
var alphabet: [String] = ["C", "D", "A", "F"]

let alphabetReversed: [String] = alphabet.sorted {
    return $0 > $1
}

print(alphabetReversed)
