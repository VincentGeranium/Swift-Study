import UIKit

protocol Container {
    
    associatedtype ItemType
    
    var count: Int { get }
    
    mutating func append(_ item: ItemType)
    
    subscript(i: Int) -> ItemType { get }
}

// 클래스 정의
class MyContainer: Container {
    var items: Array<Int> = Array<Int>()
    
    var count: Int{
        return items.count
    }
    
    func append(_ item: Int) {
        items.append(item)
    }
    
    subscript(i: Int) -> Int {
        return items[i]
    }
}

// 구조채의 Container 프로토콜 준수
struct IntStack: Container {
    typealias ItemType = Int
    
    // 기존 IntStack 구조체 구현
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
    
    var count: ItemType {
        return items.count
    }
    
    subscript(i: ItemType) -> ItemType {
        return items[i]
    }
}


// Stack 구조채의 Container 프로토콜 준수
struct Stack<Element>: Container {

    // 기존 Stack<Element> 구조체 구현
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    // Container 프로토콜 준수를 위한 구현
    mutating func append(_ item: Element) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
}


