import UIKit

class Person {
    let name: String
    var age: Int?
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    
    init?(name:String, age: Int) {
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age  = age
    }
}

let jun: Person? = Person(name: "Jun", age: 99)

if let person: Person = jun {
    print(person.name)
} else {
    print("Person wasn't initialized")
}

let jiyeon: Person? = Person(name: "JiYeon", age: -10)

if let person: Person = jiyeon {
    print(person.name)
} else {
    print("Person wasn't initialized")
}

let sua: Person? = Person(name: "", age: 30)

if let person: Person = sua {
    print(person.name)
} else {
    print("Person wasn't initialized")
}
