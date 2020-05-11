import UIKit

class Person {
    var name: String = ""
    
    var age: Int = 0
    
    var koreanAge: Int {
        return self.age + 1
    }
    
    var introduction: String {
        return "이름 : \(name), 나이 : \(age)"
    }
}

class Student: Person {
    var grade: String = "F"
    
    override var introduction: String {
        return super.introduction + " " + "학점 : \(self.grade)"
    }
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        set {
            self.age = newValue - 1
        }
    }
}

let jun: Person = Person()
jun.name = "Jun"
jun.age = 55
// jun.koreanAge = 56 //  error: cannot assign to property: 'koreanAge' is a get-only property
print(jun.introduction) // 이름 : Jun, 나이 : 55
print(jun.koreanAge) //56

let ron: Student = Student()
ron.name = "Ron"
ron.age = 14
ron.koreanAge = 15
print(ron.introduction) // 이름 : Ron, 나이 : 14 학점 : F
print(ron.koreanAge) // 15
