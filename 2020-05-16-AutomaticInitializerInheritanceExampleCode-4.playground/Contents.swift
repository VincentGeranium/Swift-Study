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
    var major: String
    
    convenience init(major: String) {
        self.init()
        self.major = major
    }
    
    override convenience init(name: String) {
        self.init(name: name, major: "Unknown")
    }
    
    init(name: String, major: String) {
        self.major = major
        super.init(name: name)
    }
}

class UniversityStudent: Student {
    var grade: String = "A+"
    var description: String {
        return "\(self.name), \(self.major), \(self.grade)"
    }
    
    convenience init(name: String, major: String, grade: String) {
        self.init(name: name, major: major)
        self.grade = grade
    }
}

let hermione: UniversityStudent = UniversityStudent()
print(hermione.description) // Unknown, Unknown, A+

let ron: UniversityStudent = UniversityStudent(name: "Ron")
print(ron.description) // Ron, Unknown, A+

let harry: UniversityStudent = UniversityStudent(name: "Harry", major: "Magic")
print(harry.description) // Harry, Magic, A+

let jun: UniversityStudent = UniversityStudent(name: "Jun", major: "Computer", grade: "A+")
print(jun.description) // Jun, Computer, A+

