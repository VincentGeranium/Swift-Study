import UIKit


protocol SomeProtocol {
    // 읽기와 쓰기를 모두 요구
    var settableProperty: String { get set }
    // 읽기만 요구
    var notNeedToBeSettableProperty: String { get }
}

protocol AnotherProtocol {
    // 타입 프로퍼티를 요구하려면 static 키워드를 사용
    // 클래스의 타입 프로퍼티에는 상속 가능한 타입 프로퍼티인 class 타입, 상속 불가능한 static 타입의 프로퍼티가 있다
    static var someTypeProperty: Int { get set }
    static var anotherTypeProperty: Int { get }
}


// Talkable 프로토콜은 topic 프로퍼티를 요구
protocol Talkable {
    var topic: String { get set }
}

// Talkable 프로토콜을 채택하여 준수하는 Person 구조체, 그러므로 Person 구조체는 topic 프로퍼티를 가져야 한다
struct Person: Talkable {
    var topic: String
}

