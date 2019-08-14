import UIKit

let possibleNumber = ["1", "2", "three", "///4///", "5"]

let mapped: [Int?] = possibleNumber.map { str in Int(str) }
print("mapped : \(mapped)")

let flatMapped: [Int] = possibleNumber.flatMap {str in Int(str) }
print("flatMapped : \(flatMapped)")

let compactMapped: [Int] = possibleNumber.compactMap { str in Int(str) }
print("compactMapped : \(compactMapped)")

let names: [String?] = ["aa", nil, nil, "dddddd", "eee"]
let counts = names.compactMap {$0?.count}
print("counts : \(counts)")

let scores = [[5,2,7], [4,8], [9,1,3]]
let allScores = scores.flatMap { $0 }

print("allScores : \(allScores)")

let input: Int? = Int("8")
print("input: \(String(describing: input))")

let passMark: Int? = input.flatMap {
    $0 > 5 ? $0 : nil
}

print("passMark \(String(describing: passMark))")
