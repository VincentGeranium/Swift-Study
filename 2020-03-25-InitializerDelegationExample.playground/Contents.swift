import UIKit

enum Student {
    case element, middle, high
    case none
    
    // 사용자정의 이니셜라이저가 있는  경우, init() 메서드를 구현해주어야 기본 이니셜라이저를 사용할 수 있다
    init() {
        self =  .none
    }
    
    // 첫 번째 사용자정의 이니셜라이저
    init(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .element
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }
    
    // 두 번째 사용자정의 이니셜라이저
    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student = Student(koreanAge: 16)
print(younger)

younger = Student(bornAt: 1998, currentYear: 2016)
print(younger)
