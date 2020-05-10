import UIKit

class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름 - \(name), 나이 - \(age)"
    }
    
    func speak() {
        print("야호!")
    }
}

class Student: Person {
    var grade: String = "F"
    
    func study() {
        print("Study hard...")
    }
}

class HogwartsStudent: Student {
    var dormitoryName: String = ""
}

let hermione: HogwartsStudent = HogwartsStudent()
hermione.dormitoryName = "Gryffindor"
hermione.speak() // 야호!
hermione.study() // Study hard...
