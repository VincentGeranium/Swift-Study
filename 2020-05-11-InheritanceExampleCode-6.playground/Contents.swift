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

let jun: Person = Person()
jun.name = "Jun"
jun.age = 55 // Person age : 55
jun.fullName = "Kim Jun"
print(jun.koreanAge) // 56

let ron: Student = Student()
ron.name = "Ron"
ron.age = 14 // Person age : 14, Student age : 14
ron.koreanAge = 15 // Person age : 14, Student age : 14
ron.fullName = "Ron weasley" // Full Name : Ron weasley
print(ron.koreanAge) // 15
