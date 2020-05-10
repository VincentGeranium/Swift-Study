import UIKit

class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름 - \(name), 나이 - \(age)"
    }
    
    func speak() {
        print("야호!")
    }
}

let jun: Person = Person()
jun.name = "Jun"
jun.age = 99
print(jun.introduction) // 이름 - Jun, 나이 - 99
jun.speak() // 야호 !
