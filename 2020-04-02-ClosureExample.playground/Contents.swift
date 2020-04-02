import UIKit

let names: [String] = ["ron", "porter", "hermione", "vincent"]

// 정렬을 위한 함수 전달
func backwards(first: String, second: String) -> Bool {
    print("\(first) 와 \(second) 비교중...")
    return first > second
}

//let reversed: [String] = names.sorted(by: backwards)
//print(reversed)

// backwards(first:second:) 함수 대신에 sorted(by:) 메서드의 전달인자로 클로저를 직접 전달.
let reversed: [String] = names.sorted(by: { (first: String, second: String) -> Bool in
    return first > second
})
print(reversed)
