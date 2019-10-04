import UIKit

// 프로퍼티를 타입 자체와 연결할 수 있다. 이러한 프로퍼티를 Type Property라고 한다

// 타입 프로퍼티는 모든 타입이 사용할 수 있는 상수 프로퍼티(Constant Property) 또는 글로벌 변수 프로퍼티와 같이 특정 타입의 모든 인스턴스에 공통적인 값을 정의하는데 유용하다

// 저장 타입 프로퍼티 (Stored type Property)는 변수 또는 상수일 수 있다

// 연산 타입 프로퍼티 (Computed type Property)는 Computed instance property와 같이 항상 변수 프로퍼티로 선언된다

// 저장 타입 프로퍼티(Stored type property)에는 항상 기본값(default value)를 줘야 한다. 그 이유는 초기화 시에, 타입 자체에는 저장 타입 프로퍼티(Stored type property)에 값을 할당할 initializer 가 없기 때문이다

// 저장 타입 프로퍼티는 처음 엑세스 할때는 게으르게 초기화(lazily initialized) 한다

// 저장 타입 프로퍼티의 게으른 초기화를 할때(처음 엑세스 할때), 다수의 쓰레드에 의해 동시에 엑세스 되고 있어도, 한번만 초기화되는 것이 보증되어 있어 lazy 키워드를 사용할 필요는 없다

// swift에서 타입 프로퍼티는 타입 정의의 일부로서 타입의 외부 중괄호 안에 쓰여지며, 각 타입 프로퍼티는 명시적으로 지원하는 타입으로 범위가 지정되게 된다

// static 키워드를 사용하여 타입 프로퍼티를 정의할 수 있다.

// 클래스 타입에 대한 연산 타입 프로퍼티(Computed type property)의 경우, class 키워드를 사용하여 서브클래스가 슈퍼클래스의 구현을 재정의(override)할 수 있다


// stored type property and computed type property example code

struct SomeStructure {
    
    // 저장 타입 프로퍼티
    // 저장 인스턴스 프로퍼티와는 다르게 "기본값"을 주었다.
    // 저장 인스턴스 프로퍼티는 "기본값"을 안줘도 된다.
    static var storedTypeProperty = "Some Value"
    
    // 연산 타입 프로퍼티
    // 연산 타입 프로퍼티는 무조건 var로 선언되어야 한다
    // 아래의 연산 타입 프로퍼티는 get만 선언되어 있음
    static var computedTypeProperty: Int {
        return 1
    }
    
}

// stored property example code

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("처음 준 값 : \(rangeOfThreeItems.firstValue)")

rangeOfThreeItems.firstValue = 6
print("두 번째로 준 값 : \(rangeOfThreeItems.firstValue)")

// enum example code

enum SomeEnumeration {
    
    static var storedTypeProperty = "Some Value"
    
    static var computedTypeProperty: Int {
        
        return 6
        
    }
}

// Stored Property(저장 프로퍼티)는 상수(constant)와 변수(variable)값을 인스턴스의 일부로 저장한다. 클래스와 구조체에서만 사용된다

// Stored type property(저장 타입 프로퍼티)는 enum(열거형)에서 사용 가능하다.

// class computed type property example code

class SomeClass {
    
    // 저장 타입 프로퍼티
    static var storedTypeProperty = "Some Value"
    
    // 연산 타입 프로퍼티
    static var computedTypeProperty: Int {
        
        return 27
        
    }
    
    // 클래스 타입에 대한 연산 타입 프로퍼티의 경우, class 키워드를 사용하여 서브클래스가 슈퍼클래스의 구현을 재정의(override)할 수 있다.
    
    // overrideableComputedTypeProperty는 class 키워드가 붙어있다.
    class var overrideableComputedTypeProperty: Int {
        
        return 107
        
    }
}

// override example code

// SomeClass를 슈퍼클래스로 상속받은 서브클래스 ChildSomeClass
class ChildSomeClass: SomeClass {
    
    // SomeClass에 있던 class 키워드가 붙은 computed type property를 서브클래스인 ChildSomeClass에서 재정의(override) 함
    // 재정의 할 때는 당연히 override 키워드 사용
    override static var overrideableComputedTypeProperty: Int {
        
        return 2222
        
    }
}

// Querying and Setting Type Properties (타입 프로퍼티 조회와 설정)

// 인스턴스 프로퍼티에서 했던것 처럼, 타입 프로퍼티 역시 조회와 값 셋팅은 .(dot)을 통해 이루어진다

// 그러나 타입 프로퍼티는 조금 다르다.

// 타입 프로퍼티는 타입"자체"의 이름을 치고 .(dot)을 통해 프로퍼티에 접근한다

// rangeOfThreeItems는 FixedLengthRange 구조체의 인스턴스
// 인스턴스 프로퍼티를 만들고 이렇게 인스턴스를 통해 접근한다
print(rangeOfThreeItems.firstValue)


// 그러나 타입 프로퍼티는
// SomeStructure 라는 타입 "자체"의 이름을 가지고 .(dot)을 통해 프로퍼티에 접근한다
// SomeStructure는 구조체 자체의 이름이다 -> 위의 코드 참고
print(SomeStructure.storedTypeProperty)
