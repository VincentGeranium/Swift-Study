import UIKit

class Person {
    var name: String = ""
    
    var age: Int = 0 {
        didSet {
            print("Person age : \(self.age)")
        }
    }
    
    var koreanAge: Int {
        return self.age + 1
    }
    
    var fullName: String {
        get {
            return self.name
        }
        
        set {
            self.name = newValue
        }
    }
}

class Student: Person {
    var grade: String = "F"
    
    override var age: Int {
        didSet {
            print("Student age : \(self.age)")
        }
    }
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        
        set {
            self.age = newValue - 1
        }
//        didSet {} // Error Message : 'didSet' cannot be provided together with a getter
    }
    
    override var fullName: String {
        didSet {
            print("Full Name : \(self.fullName)")
        }
    }
}

class School {
    var students: [Student] = [Student]()
    
    subscript(number: Int) -> Student {
        print("School Subscript")
        return students[number]
    }
}

class MiddleSchool: School {
    var middleStudents: [Student] = [Student]()
    
    // 부모클래스(School)에게 상속받은 서브스크립트 재정의
    override subscript(index: Int) -> Student {
        print("MiddleSchool Subscript")
        return middleStudents[index]
    }
}

let university: School = School()
university.students.append(Student())
university[0] // School Subscript

let middle: MiddleSchool = MiddleSchool()
middle.middleStudents.append(Student())
middle[0] // MiddleSchool Subscript


