import UIKit

var str = "Hello, playground"

// 새로운 메소드 //inout 매소드

var input = [5,6,1,3,10,2,7,14,9]
print(input.count)

for i in 1..<input.count {
    print("i = \(i)")
    for idx in 0..<input.count - i {
        print("idx = \(idx)")
        guard input[idx] > input[idx + 1] else { continue }
        print("input[idx]: \(input[idx]) > input[idx + 1]: \(input[idx + 1])")
        let temp = input[idx]
        print("temp: \(temp)")
        input[idx] = input[idx + 1]
        print("input[idx]: \(input[idx])")
        input[idx + 1] = temp
        print("input[idx + 1]: \(temp)")
    }
}



func bubbleSort(input: inout [Int]) {
    guard !input.isEmpty else { return }

    for i in 1..<input.count {
        for idx in 0..<input.count - i {
            guard input[idx] > input[idx + 1] else { continue }
            input.swapAt(idx, idx + 1)
            print("\(i):", input)

            // swapAt 과 동일한 구현
//            let temp = input[idx]
//            input[idx] = input[idx + 1]
//            input[idx + 1] = temp
        }
    }
}

bubbleSort(input: &input)
print(input)

