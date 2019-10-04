import UIKit

// 프로토콜은 약속, 규약

// 프로토콜은 특정 작업이나 기능에 적합한 메소드, 프로퍼티 및 기타 요구사항의 청사진(blue print)를 정의한다

// 프로토콜을 정의한 후 프로토콜을 클래스, 구조체 또는 열거형에서 채택(adopted)하여 이러한 요구사항을 실제로 구현할 수 있다

// 프로토콜의 요구사항을 충족시키는 모든 타입은 해당 프로토콜을 준수(conform)한다고 한다

// 프로토콜은 구현해야할 요구사항을 지정하는 것 이외에도, 프로토콜을 확장하여 이러한 요구사항 중 일부를 구현하거나, conforming 타입에서 활용할 수 있는 추가 기능을 구현 할 수 있다

// 프로토콜은 메소드, 프로퍼티등을 "정의"만 하고, 이 프로토콜을 채택한 곳에서 "구현"한다

// protocol이라는 키워드를 붙이고, 프로토콜의 이름을 지어주면 된다
protocol SomeProtocol {
    // protocol definition gose here
}


// class, structure, enumeration에서 프로토콜을 채택 하는 방법
// 상속 받듯이 :(콜론) 뒤에 프로토콜의 이름을 넣어주면 된다
// ,(콤마)를 이용해 프로토콜 여러개를 채택할 수 도 있다
struct SomeStructure: SomeProtocol {
    
    // structure definition gose here
    
}

// 클래스를 상속받고 프로토콜도 채택해야 하는 경우
// 슈퍼 클래스를 먼저 써주고, 그 다음 프로토콜을 채택해주어야 한다

class SuperClass {
    // class definition gose here
}

class SubClass: SuperClass, SomeProtocol {
    // class definition gose here
}
