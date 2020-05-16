import UIKit

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "Unknown")
    }
}

class Student: Person {
    var major: String =  "Swift"
}

// 부모클래스의 지정 이니셜라이저 자동 상속
let jun: Person = Person(name: "Jun") // Jun
let ron: Student = Student(name: "Ron") // Ron
print(jun.name)
print(ron.name)

// 부모클래스의 편의 이니셜라이저 자동 상속
let harry: Person = Person()
let hermione: Student = Student()
print(harry.name) // Unknown
print(hermione.name) // Unknown

