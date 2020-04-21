import UIKit

protocol Resettable {
    mutating func reset()
}

class Persons: Resettable {
    var name: String?
    var age: Int?
    
    func reset() {
        self.name = nil
        self.age = nil
    }
}

struct Point: Resettable {
    var x: Int = 0
    var y: Int = 0
    
    mutating func reset() {
        self.x = 0
        self.y = 0
    }
}

enum Direction: Resettable {
    case east, west, south, north, unknown
    
    mutating func reset() {
        self = Direction.unknown
    }
}

// 프로토콜의 이니셜라이저 요구와 구조체의 이니셜라이저 요구 구현
protocol Named {
    var name: String { get }
    
    init(name:String)
}

struct Pet: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// 클래스의 이니셜라이저 요구 구현
class Personss: Named {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

// 상속 불가능한 클래스의 이니셜라이저 요구 구현
final class Person: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// 상속받은 클래스의 이니셜라이저 요구 구현 및 재정의
class School {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class MiddleSchool: School, Named {
    required override init(name: String) {
        super.init(name: name)
    }
}

