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

// 프로토콜을 채택하는 모든 타입의 인스턴스를 변경하기 위한 프로토콜 인스턴스 메소드 요구사항을 정의하려면, 메소드에 mutating 키워드를 프로토콜의 정의의 일부로 표시한다

// 이로 인하여 구조체와 열거형에서 프로토콜을 채택하고, 해당 메소드 요구사항을 충족시킬 수 있다

protocol MutatingProtocol {
    
    mutating func SomeMethod(_ num: Int)
    
}

struct MutatingStruct: MutatingProtocol {
    
    var x = 0
    mutating func SomeMethod(_ num: Int) {
        
        x += num
        
    }
    
}

// 구조체와 열거형은 Value Type이기 때문에 원래는 메소드 안에서 프로퍼티의 값을 수정하지 못한다

// 만약에 프로토콜을 채택하는 곳이 열거형과 구조체인데, 프로퍼티 변경이 필요하다!! 그렇다면 프로토콜에서 애초에 mutating으로 메소드를 만들기로 규약을 정한것이다

// 구조체나 열거형은 해당 프로토콜을 채택하면, mutating 키워드와 함꼐 메소드를 작성해주면 된다

// 하지만, 프로토콜 인스턴스 메소드 요구사항을 mutating으로 하면, 클래스에 해당 메소드를 구현할 때, mutating 키워드를 쓸 필요가없다

// mutating 키워드는 구조체와 열거형에서만 사용된다

// 애초에 클래스는 Reference type, 그러므로 메소드 내에서 프로퍼티들의 값을 변경하는 것이 가능하다

class MutatingClass: MutatingProtocol {
    var x = 0
    
    func SomeMethod(_ num: Int) {
        x += num
    }
    
}


// 3. Initializer Requirements (프로토콜의 이니셜라이저 요구사항)

// 프로토콜은 프로토콜을 준수하려는 타입(conforming type)에게 특정한 이니셜라이저를 구현하도록 요구할 수 있다

// 프로토콜에서, 이러한 이니셜라이저는 일반 이니셜라이저와 똑같이 작성하지만 중괄호나 본문은 작성하지 않는다

protocol InitilizerProtocol {
    
    init(someParameter: Int)
    
}


// 4. Class Implementation of Protocol Initializer Requirements

// 해당 프로토콜을 준수하는 클래스에서 프로토콜에서 요구하는 이니셜라이저 요구사항을 구현 할 수 있다

// designated init 또는 convenience init으로 구현 가능 하다

// 이 두가지 경우 모두 required라는 modifier를 표시해야한다

protocol ImplementationProtocolInit {
    
    init(someParameter: Int)
    
}

class ImplementationProtocolInitClass: ImplementationProtocolInit {
    
    required init(someParameter: Int) {
        
        // initializer implementation goes here
        
    }
}

// 위의 경우 "클래스"이므로 required를 써준다

// 구조체인 경우는 "required"가 필요없다.

struct ImplementationStruct: ImplementationProtocolInit {
    
    init(someParameter: Int) {
        // initializer implementation gese here
    }
}

// "클래스"에서는 required를 init앞에 써줘야하는 이유

// required를 사용하면 해당 프로토콜을 준수하는 클래스의 모든 하위클래스들 역시 이니셜라이저 요구사항을 구현함을 보장(ensure) 받을 수 있다

// 만약 클래스가 "final" 수정자로 표시되어있다면, 프로토콜 이니셜라이저 구현을  "required" 수정자를 표시할 필요 없다
// 왜냐하면 final 클래스는 서브클래스화 할 수 없기 때문이다.

// final 수정자는 간단하게 말하면 재정의(override)를 막아주게하는 수정자이다

// 이 final은 메소드, 프로퍼티, 클래스 등등에 붙일 수 있다

// 만약 서브클래스가 슈퍼클래스의 designated 이니셜라이저를 재정의(override)하고, 또한 프로토콜에서 요구하는 이니셜라이저와 일치하는 경우에는 이니셜라이저를 required override로 표시

protocol SameInitProtocol {
    init()
}

class SameInitSuperClass {
    
    init() {
        // initializer implementation gose here
    }
}

class SameInitSubClass: SameInitSuperClass, SameInitProtocol {
    // "required" from SameInitProtocol conformance. "override" from SameInitSuperClass
    
    required override init() {
        // initializer implementation gose here
    }
}

// 5. Failable Initializer Requirements

// 프로토콜은 해당 프로토콜을 준수하는 타입들에게 failable 이니셜라이저를 정의하도록 요구할 수 있다

// failable 이니셜라이저 요구사항은 해당 프로토콜을 준수하는 타입에서 failable 또는 nonfailable 이니셜라이져로 만족시킬수있다

// nonfailable 이니셜라이져 요구사항은 nonfailable 이니셜러아저 또는 암시적(implicitly)으로 언래핑된 failable 이니셜라이저로 만족시킬 수 있다
