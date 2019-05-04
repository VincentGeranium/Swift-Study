//: [Previous](@previous)

import Foundation


var inputCases = [
    [],
    [1],
    [1, 1, 2, 2, 3, 3, 3, 3, 1, 1, 2, 2],
    [14, 10, 9, 7, 6, 5, 3, 2, 1],
    [1, 2, 3, 5, 6, 7, 9, 10, 14],
    [5, 6, 1, 3, 10, 2, 7, 14, 9],
]

func selectionSort(input: inout [Int]) {
    for i in input.indices {
        var minIndex = i
        for idx in (i + 1)..<input.count {
            guard input[minIndex] > input[idx] else { continue }
            minIndex = idx
        }
        input.swapAt(i, minIndex)
    }
}

for input in inputCases {
    var input = input
    selectionSort(input: &input)
    print(input)
}





// indices = 새로운 매소드


//func selectionSort(input: inout [Int]) {
    //for i in 0..<input.count
//    for i in input.indices {
//        print("i = ", i)
//        var minIndex = i
//        for idx in  (i + 1)..<input.count {
//            guard input[minIndex] > input[idx] else { return }
//            minIndex = idx
//        }
//        input.swapAt(i, minIndex)
//    }
//    print(input)
//}

//for input in inputCases {
//    var input = input
//    selectionSort(input: &input)
//    print(input)
//}



//: [Next](@next)
