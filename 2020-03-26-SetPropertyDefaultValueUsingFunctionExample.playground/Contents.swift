import UIKit

struct Student {
    var name: String?
    var age: Int?
}

class SchoolClass {
    var student: [Student] = {
        // 새로운 인스턴스를 생성하고 사용자정의 연산을 통한 후 반환해준다.
        // 번환되는 값의 타입은 [Student] 타입이어야 한다.
        var arr: [Student] = [Student]()
        
        for num in 1...15 {
            var student: Student = Student(name: nil, age: num)
            arr.append(student)
        }
        
        return arr
    }()
}

let myClass: SchoolClass = SchoolClass()
print(myClass.student.count)
