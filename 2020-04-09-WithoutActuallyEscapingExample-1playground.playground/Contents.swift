import UIKit

// 오류가 발생하는 hasElements 함수
//func hasElements(in array: [Int], match predicate: (Int) -> Bool) -> Bool {
//    return (array.lazy.filter { predicate($0) }.isEmpty == false)
//}

//withoutActuallyEscaping(_:do:) 함수의 활용
let numbers: [Int] = [2, 4, 6, 8]

let evenNumberPredicate = { (number: Int) -> Bool in
    return number % 2 == 0
}

let oddNumberPredicate = { (number: Int) -> Bool in
    return number % 2 != 0
}

func hasElements(in array: [Int], match predicate: (Int) -> Bool) -> Bool {
    return withoutActuallyEscaping(predicate, do: { escapablePredicate in
        return (array.lazy.filter { escapablePredicate($0) }.isEmpty == false)
    })
}

let hasEvenNumber = hasElements(in: numbers, match: evenNumberPredicate)
print("hasEvenNumber : \(hasEvenNumber)")

let hasOddNumber = hasElements(in: numbers, match: oddNumberPredicate)
print("hasOddNumber : \(hasOddNumber)")
