import UIKit

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
    
    deinit {
        print("Person 클래스의 인스턴스가 소멸됩니다.")
    }
}

var jun: Person = Person()
jun.height = 181.0
jun.weight = 73.2


let vincent: Person = Person()
vincent.height = 180.7
vincent.weight = 72.5

var ghost: Person? = Person()
ghost = nil
