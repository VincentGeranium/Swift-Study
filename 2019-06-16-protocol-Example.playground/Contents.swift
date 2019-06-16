import UIKit
import Foundation

protocol exampleProtocol {
    
}

struct SomeStruct: exampleProtocol {
    // struct 정의
}

class SomeClass: exampleProtocol {
    // class 정의
}

enum SomeEnum: exampleProtocol {
    // enum 정의
}

// 클래스가 다른 클래스를 상속받는다면 상속받을 클래스 이름 다음에 채택할 프로토콜을 나열

class SuperClass {
    // class (슈퍼클래스) 정의
}

class SubClass: SuperClass, exampleProtocol {
    // SubClass 정의
}

// SubClass 는 SuperClass를 상속받았으며 동시에 exampleProtocol 프로토콜을 채택한 클래스
