import UIKit

protocol Container {
    
    associatedtype ItemType
    
    var count: Int { get }
    
    mutating func append(_ item: ItemType)
    
    subscript(i: Int) -> ItemType { get }
}

// Stack 구조채의 Container 프로토콜 준수
struct Stack<ItemType>: Container {

    // 기존 Stack<ItemType> 구조체 구현
    var items = [ItemType]()
    
    mutating func push(_ item: ItemType) {
        items.append(item)
    }
    
    mutating func pop() -> ItemType {
        return items.removeLast()
    }
    
    // Container 프로토콜 준수를 위한 구현
    mutating func append(_ item: ItemType) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> ItemType {
        return items[i]
    }
}

// Stack 구조체의 제네릭 서브스크립트 구현과 사용

extension Stack {
    subscript<Indices: Sequence>(indices: Indices) -> [ItemType]
        where Indices.Iterator.Element == Int {
            var result = [ItemType]()
            for index in indices {
                result.append(self[index])
            }
            return result
    }
}

var integerStack: Stack<Int> = Stack<Int>()

integerStack.append(1)
print(integerStack.items)

integerStack.append(2)
print(integerStack.items)

integerStack.append(3)
print(integerStack.items)

integerStack.append(4)
print(integerStack.items)

integerStack.append(5)
print(integerStack.items)

print(integerStack[0...2]) // [1, 2, 3]
