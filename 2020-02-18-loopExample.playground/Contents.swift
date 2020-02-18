import UIKit

print("----------------------[names]-----------------------")

var names: [String] = ["Jun", "Irene", "JiYeon", "Vincent"]

while names.isEmpty == false {
    /// removeFirst() 는 요소를 삭제함과 동시에 삭제한 요소를 반환한다
    print("Good bye \(names.removeFirst())")
}

print("----------------------[nameList]-----------------------")

var nameList: [String] = ["Jun", "Irene", "JiYeon", "Vincent"]

repeat {
    /// removeFirst() 는 요소를 삭제함과 동시에 삭제한 요소를 반환한다
    print("Good bye \(nameList.removeFirst())")
} while nameList.isEmpty == false

print("----------------------[구문 이름표]-----------------------")

var numbers: [Int] = [3, 2342, 6, 3252]

numbersLoop: for num in numbers {
    if num > 5 || num < 1 {
        continue numbersLoop
    }
    
    var count: Int = 0

    printLoop: while true {
        print(num)
        count += 1
        
        if count == num {
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num {
            break numbersLoop
        }
        numbers.removeFirst()
    }
}
print(numbers)

