import UIKit

class Person {
    let name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let jun: Person = Person(name: "Jun")
print(jun.name)
print(jun.age)

// error: cannot assign to property: 'name' is a 'let' constant
// note: change 'let' to 'var' to make it mutable
//jun.name = "Vincent"
