import UIKit

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
    
    subscript(index: Int) -> Student? {
        if index < self.number {
            return self.students[index]
        }
        return nil
    }
}

let highSchool: School = School()
highSchool.addStudents(names: "Jun", "SuA", "Vincent", "Harry", "Ron")

let aStudent: Student? = highSchool[1]
print("\(aStudent?.name) \(aStudent?.number)")
