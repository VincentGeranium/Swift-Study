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

class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
}

let jun: Person = Person()
jun.name = "jun"
jun.age = 99
print(jun.introduction) // 이름 - jun, 나이 - 99
jun.speak() // 야호!

let ron: Student = Student()
ron.name = "Ron"
ron.age = 13
ron.grade = "C"
print(ron.introduction) // 이름 - Ron, 나이 - 13
ron.speak() // 야호!
ron.study() // Study hard...
