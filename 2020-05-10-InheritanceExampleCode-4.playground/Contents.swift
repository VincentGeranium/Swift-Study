import UIKit

class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름 - \(name), 나이 - \(age)"
    }
    
    func speak() {
        print("안녕하세요.")
    }
    
    class func introduceClass() -> String {
        return "반갑습니다."
    }
}

class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
    
    override func speak() {
        print("저는 학생입니다.")
    }
}

class HogwartStudent: Student {
    var domitoryName: String = ""
    
    class func introduceClass() {
        print(super.introduceClass())
    }
    
    override class func introduceClass() -> String {
        return "저는 호그와트의 그리핀도르 기숙사 학생입니다."
    }
    
    override func speak() {
        super.speak()
        print("그리핀도르 학생이죠.")
    }
}

let jun: Person = Person()
jun.speak() // 안녕하세요.

let ron: Student = Student()
ron.speak() // 저는 학생입니다.

let hermione: HogwartStudent = HogwartStudent()
hermione.speak() // 저는 학생입니다. 그리핀도르 학생이죠.

print(Person.introduceClass()) // 반갑습니다.
print(Student.introduceClass()) // 반갑습니다.
print(HogwartStudent.introduceClass() as String) // 저는 호그와트의 그리핀도르 기숙사 학생입니다.
HogwartStudent.introduceClass() as Void // 반갑습니다.


