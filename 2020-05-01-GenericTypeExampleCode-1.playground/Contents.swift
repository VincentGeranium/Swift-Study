import UIKit

// 제네릭을 사용하지 않은 IntStack 구조체 타입
struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

var integerStack: IntStack = IntStack()

integerStack.push(0)
print(integerStack.items) // [0]

integerStack.push(4)
print(integerStack.items) // [0, 4]

integerStack.push(3)
print(integerStack.items) // [0, 4, 3]

integerStack.push(0)
print(integerStack.items) // [0, 4, 3, 0]

integerStack.pop()
print(integerStack.items) // [0, 4, 3]

integerStack.pop()
print(integerStack.items) // [0, 4]

integerStack.pop()
print(integerStack.items) // [0]

integerStack.pop()
print(integerStack.items) // []
