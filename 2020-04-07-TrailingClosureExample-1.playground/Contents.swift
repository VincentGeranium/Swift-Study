import UIKit

var names: [String] = ["Jun", "Ron", "Harry", "Vincent"]

// 후행 클로저의 사용
let reversed: [String] = names.sorted() { (first: String, second: String) -> Bool in
    return first > second
}

//print(reversed)

// sorted(by:) 메서드의 소괄호까지 생략.
let anotherReversed: [String] = names.sorted { (first: String, second: String) -> Bool in
    return first > second
}

print(anotherReversed)
