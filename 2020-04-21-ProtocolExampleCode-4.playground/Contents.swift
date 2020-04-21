import UIKit

// 실패 가능한 이니셜라이저 요구를 포함하는 Named 프로토콜과 Named 프로토콜을 준수하는 다양한 타입들
protocol Named {
    var name: String { get }
    
    init?(name: String)
}

struct Animal: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Pet: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Person: Named {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

class School: Named {
    var name: String
    
    required init?(name: String) {
        self.name = name
    }
}

