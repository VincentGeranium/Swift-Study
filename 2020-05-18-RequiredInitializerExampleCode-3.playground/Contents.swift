import UIKit

class Person {
    var name: String
    
    init() {
        self.name = "Unknown"
    }
}

class Student: Person {
    var major: String = "Unknown"
    
    init(major: String) {
        self.major = major
        super.init()
    }
    
    // 부모클래스의 이니셜라이저를 재정의함과 동시에 요구 이니셜라이저로 변경됨을 알림.
    required override init() {
        self.major = "Unknown"
        super.init()
    }
    
    // 이 요구 이니셜라이저는 앞으로 계속 요구함.
    required convenience init(name: String) {
        self.init()
        self.name = name
    }
}

class UniversityStudent: Student {
    var grade: String
    
    init(grade: String) {
        self.grade = grade
        super.init()
    }
    
    // Student 클래스에서 요구했으므로 구현해주어야 한다.
    required init() {
        self.grade = "F"
        super.init()
    }
    
    // Student 클래스에서 요구했으므로 구현해주어야 한다.
    required convenience init(name: String) {
        self.init()
        self.name = name
    }
}

let jun: UniversityStudent = UniversityStudent()
print(jun.grade) // F

let ron: UniversityStudent = UniversityStudent(name: "Ron")
print(ron.name) // Ron
