import UIKit

class Person {
    var name: String
    // 요구 이니셜라이저 정의
    required init() {
        self.name = "Unknown"
    }
}

class Student: Person {
    var major: String = "Unknown"
    
    // 자신의 지정 이니셜라이저 구현
    init(major: String) {
        self.major = major
        super.init()
    }
    
    required init() {
        self.major = "Unknown"
        super.init()
    }
}

class UniversityStudent: Student {
    var grade: String
    
    // 자신의 지정 이니셜라이저 구현
    init(grade: String) {
        self.grade = grade
        super.init()
    }
    
    required init() {
        self.grade = "F"
        super.init()
    }
}

let ron: Student = Student()
print(ron.major) // Unknown

let jun: Student = Student(major: "Computer Science")
print(jun.major) // Computer Science

let hermione: UniversityStudent = UniversityStudent(grade: "A+")
print(hermione.grade) // A+

