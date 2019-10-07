import UIKit

// 1. Class

// 전통적인 OOP 관점에서 클래스
// Swift에서는 객체라는 용어대신 "인스턴스"라는 용어를 사용
// 즉, 클래스 타입의 인스턴스를 객체라고 칭하지 않는다
// 인스턴스는 특정 타입이 메모리에 적재된 시점의 타입
// 클래스는 단일 상속만 가능하다
// 클래스는 참조타입(reference type)(call by reference)
// iOS 프레임워크의 대부분이 클래스로 구성

// 2. Struct

// 상속 불가
// 구조체는 값 타입(value type)(call by value)
// Swift의 대부분의 큰 뼈대는 모두 struct로 구성되어 있다

// 3. 클래스와 구조체의 공통점

// 1) 서로 다른 타입(자료형)들을 하나로 묶을 수 있다
// 2) 이러한 묶은 자료형들을 새로운 타입처럼 사용이 가능하다
// 3) 클래스/구조체 안에서 함수/프로퍼티 정의 가능
// 4) extension이 가능하다
// 등등

// 4. Enum

// 다른 언어의 열거형과는 다르다
// 상속 불가
// swift에서의 열거형은 유사한 종류의 여러값을 유의미한 이름으로 한곳에 모아 정의한 것으로 볼 수 있다
// 즉, 열거형 자체가 "하나의 데이터 타입" 인 것이다.
// 열거형의 케이스 하나하나 전부 하나의 유의미한 값으로 취급한다
// 그리고 값이 없을 수 있다. 즉, 이름 그 자체만으로 고유한 의미를 나타낼 수 있게 되는 것이다

// 열거형의 예제
enum Animal {
    case tiger
    case leopard
    case lion
}

let tiger2: Animal = Animal.tiger

let lion2: Animal = .lion

// tiger2 라는 변수는 Animal 타입을 가지고 Animal.tiger라는 값을 주었다
// lion2도 Animal 타입을 가지고 있다 그런데  .lion으로 선언해 주었는데도 lion으로 값을 가져갔다
// 처음 변수을 선언할 때 Animal 타입이라고 명시를 했으므로 컴파일러는 따로 Animal이 없어도 .lion은 Animal.lion이구나하고 알아듣게 되는 것이다

print(tiger2)

print(lion2)

// Animal 열거형 내에 case로만 tiger, leopard, lion으로 값을 주지 않고 이름만 주었는데 print해 보니 값을 가졌다
// 즉, 값을 주지 않아도 이름 그 자체로서 값을 의미한다고 볼 수 있다는 것이다
// 그러나 C나 C++에서 사용하는 열거형 처럼 사용하고 싶다면 원시값(raw value)를 설정하면 된다

enum Animal2: Int {
    case tiger = 0
    case leopard
    case lion
}

// Animal2 타입은 Int 타입을 상속하는 것은 아니고 Int 타입이라고 타입을 지정해주는 것이다

let tiger3: Animal2 = .tiger
let lion3: Animal2 = .lion

print(tiger3.rawValue)
print(lion3.rawValue)

// 원시 값은 문자열, 글자, 정수 또는 어떠한 부동 소수점 타입이 될 수 있다
// 각각의 원시 값은 열거형 정의 안에서 반드시 유일해야 한다
// 원시 값으로 정수가 사용되었다면, 열거형 멤버의 일부에 아무 값도 설정되지 않은 경우 자동 증가 할 것이다

// 전달한 원시값에 해당하는 케이스가 없을 수 있기 때문에 원시값을 통한 인스턴스 생성은 옵셔널 값으로 반환된다
enum Animal3: Int {
    
    case tiger = 0
    
    case leopard
    
    case lion
    
}

let someAnimal = Animal3(rawValue: 4)

print(someAnimal)

// 위의 코드는 Animal3 열거형에 원시값 4를 가지는 애를 someAnimal에 넣어줘라 라는 뜻이다
// 그러나 Animal3은 열거형에 2까지 밖에 없다
// 그르므로 nil을 반환
type(of: someAnimal) //somAnimal은 optional 타입
