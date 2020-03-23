import UIKit

class SomeClass {
    init() {
        // 초기화할 떄 필요한 코드
    }
}

struct SomeStruct {
    init() {
        // 초기화할 때 필요한 코드
    }
}

enum SomeEnum {
    case someCase
    
    init() {
        // 열거형은 초기화할 때 반드시 case중 하나가 되어야 한다.
        self = .someCase
        // 초기화할 때 필요한 코드
    }
}
