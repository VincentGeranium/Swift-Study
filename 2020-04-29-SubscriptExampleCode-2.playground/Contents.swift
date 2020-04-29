import UIKit

// 복수의 서브스크립트 구현
struct Student {
    var name: String
    var number: Int
}

class School {
    
    var number: Int = 0
    var students: [Student] = [Student]()
    
    func addStudent(name: String) {
        let student: Student = Student(name: name, number: self.number)
        self.students.append(student)
        self.number += 1
    }
    
    func addStudents(names: String...) {
        for name in names {
            self.addStudent(name: name)
        }
    }
    
    // 첫 번째 서브스크립트
    subscript(index: Int) -> Student? {
        get {
            if index < self.number {
                return self.students[index]
            }
            return nil
        }
        
        set {
            guard var newStudent: Student = newValue else {
                return
            }
            
            var number: Int = index
            
            if index > self.number {
                number = self.number
                self.number += 1
            }
            
            newStudent.number = number
            self.students[number] = newStudent
        }
    }
    
    // 두 번째 서브스크립트
    subscript(name: String) -> Int? {
        get {
            return self.students.filter{ $0.name == name }.first?.number
        }
        
        set {
            guard var number: Int = newValue else {
                return
            }
            
            if number > self.number {
                number = self.number
                self.number += 1
            }
            
            let newStudent: Student = Student(name: name, number: number)
            self.students[number] = newStudent
        }
    }
    
    // 세 번째 서브스크립트
    subscript(name: String, number: Int) -> Student? {
        return self.students.filter{ $0.name == name && $0.number == number}.first
    }
}

let highSchool: School = School()
highSchool.addStudents(names: "Jun", "SuA", "Ron", "Harry", "Vincent")

let aStudent: Student? = highSchool[1]
print("\(aStudent?.number), \(aStudent?.name)") // Optional(1), Optional("SuA")

print(highSchool["Jun"]) // Optional(0)
print(highSchool["Kamel"]) // nil

highSchool[0] = Student(name: "Kamui", number: 0)
highSchool["Buck"] = 1

print(highSchool["Mark"]) // nil
print(highSchool["Buck"]) // Optional(1)
print(highSchool["Harry", 3]) // Optional(Student(name: "Harry", number: 3))
print(highSchool["Luke", 3]) // nil

