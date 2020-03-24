import UIKit

class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let jun: Person = Person(name: "Jun")
print(jun.name)
print(jun.age)

jun.age = 99
print(jun.age)

jun.name = "Vincent"
print(jun.name)
