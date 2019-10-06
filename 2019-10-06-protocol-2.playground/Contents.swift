import UIKit

// 1.Method Requirements (메소드 요구 사항)

// 프로토콜은 특정 인스턴스 메소드 및 타입 메소드가 타입을 준수하여 구현되도록 요구할 수 있다.

// 메소드는 일반 인스턴스 및 타입 메소드와 완전히 동일. 그러나 중괄호와 메소드 본문 없이 프로토콜 정의의 일부로 작성된다.

// varidic(임의의 많은 변수를 취하는) 파라미터는 일반 메소드와 동일한 규칙에 따라 허용된다.

// 프로토콜에서의 메소드 정의 방법

protocol SomeProtocol {
    
    func someMethod()
    
}

// 이 프로토콜을 "채택"하는 클래스나 구조체, 열거형들은 이 메소드를 꼭 "구현" 해줘야한다

// 일반 메소드와 완전히 동일하게 작성가능

protocol SecondSomeProtocol {
    
    func someMethod()
    func anotherMethod(name: String, age: Int) -> Int
    func protocolMethod() -> String
    
}

// 타입 프로퍼티를 프로토콜에 정의한 경우, 타입 메소드 요구사항에 항상  "static" 키워드를 붙여야 한다
// 클래스에서 구현할 때, 타입 메소드 요구사항 앞에 "class" 또는 "static" 키워드가 붙는 경우에도 마찬가지이다.

protocol typeMethodProtocol {
    
    static func someTypeMethod()
    
    static func anotherTypeMethod()
    
}

// 예를 들어 위와 같은 프로토콜이 있다고 생각해보자, 그러면 이 프로토콜을 "클래스"에서 채택 해자
// AdoptProtocolClass라는 클래스에서 typeMethodProtocol을 "채택"했다. 그리고 typeMethodProtocol가 요구하는 메소드들을 구현했다
// typeMethodProtocol에 구현되어 있는 메소드 중 someTypeMethod()는 static이라는 키워드로 구현
// anotherTypeMethod()는 class라는 키워드로 구현
class AdoptProtocolClass: typeMethodProtocol {
    
    static func someTypeMethod() {
    }
    
    class func anotherTypeMethod() {
    }
}

// class 라는 키워드가 붙으면 서브클래스에서 재정의(override)가 가능하다
class ChildClass: AdoptProtocolClass {
    override static func anotherTypeMethod() {
        
    }
}

// single(단일) 인스턴스 메소드를 요구하는 프로토콜 예제
protocol RandomNumberGenerator {
    
    func random() -> Double
    
}

// random이라는 메소드를 "정의"
// RandomNumberGenerator라는 프로토콜은 이 RandomNumberGenerator를 "채책"하고 "준수"하는 클래스, 구조체, 열거형에 random이라는 메소드를 "요구"하며, 호출 될 때마다 Double 값을 리턴한다

// RandomNumberGenerator 프로토콜 채택하고 구현하는 예제
class LinearCongruentialGenerator: RandomNumberGenerator {

    var lastRandom = 42.0
    
    let m = 139968.0
    
    let a = 3877.0
    
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        
        return lastRandom / m
    }
}

// LinearCongruentialGenerator이라는 클래스가 RandomNumberGenerator를 채택
// 여러 저장 인스턴스 프로퍼티들을 선언, 기본값을 주었으므로 init은 필요없다
// RandomNumberGenerator가 요구한 random()이라는 메소드도 구현

// 2. Mutating Method Requirements

// 인스턴스에 속한 메소드를 수정(또는 변경) 할 때가 있다
// 예를들어 Value Type(=> 구조체 및 열거형)의 메소드의 경우 func 키워드 앞에 "mutating" 키워드를 두어 해당 메소드가 속한 인스턴스와 해당 인스턴스의 모든 프로퍼티를 수정할 수 있다
