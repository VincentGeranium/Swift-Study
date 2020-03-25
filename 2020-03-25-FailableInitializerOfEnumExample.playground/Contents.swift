import UIKit

enum Student: String {
    case element = "초등학생", middle = "중학생", high = "고등학생"
    
    init?(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .element
        case 14...16:
            self = .middle
        case 16...19:
            self = .high
        default:
            return nil
        }
    }
    
    init?(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student? = Student(koreanAge: 20)
print(younger)

younger = Student(bornAt: 2020, currentYear: 2016)
print(younger)

younger = Student(rawValue: "대학생")
print(younger)

younger = Student(rawValue: "고등학생")
print(younger)

if let student: Student = younger {
    print(student)
} else {
    print("Student wasn't initialized")
}
