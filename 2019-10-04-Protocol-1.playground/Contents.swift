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

// Property Requirements 프로퍼티 요구사항

// 프로포콜은 어떤 conforming type(해당 프로토콜을 준수하는 타입)에게 특정 이름과 타입인, 인스턴스 프로퍼티 또는 타입 프로퍼티를 요구할 수 있다

// 프로토콜은 이 프로퍼티가 저장 프로퍼티인지, 연산 프로퍼티인지 명시하지 않는다. 오직 프로퍼티의 이름과 타입만 요구된다

// 프로토콜은 각 프로퍼티에 getter(읽기)인지 getter/setter(읽기/쓰기)인지 명시해야만 한다

// 프로토콜이 gettable 및 settable 프로퍼티를 요구하면, 해당 프로퍼티 요구사항은 상수(constant)저장 프로퍼티 또는 읽기 전용 연산 프로퍼티로 충족되서는 안된다

// 프로토콜에서 gettable만 필요로 하는 경우, 모든 종류의 프로퍼티에서 요구사항을 충족시킬수 있으며, 만약 필요하다면 settable이 될 수도 있다

// 프로퍼티 요구사항은 항상 변수(variable) 프로퍼티로 선언된다

// gettable과 settable 프로퍼티는 선언 다음에 {get set}을 쓰고, gettable 프로퍼티는 {get}으로 써준다

// SecondSomeProtocol 이라는 프로토콜 정의
// 2개의 프로퍼티 선언, var 로 선언
protocol SecondSomeProtocol {
    // 읽기/쓰기가 가능한 프로퍼티
    var mustBeSettable: Int { get set }
    
    // 읽기 전용 프로퍼티
    var doesNotNeedToBeSettable: Int { get }
}


protocol AnotherProtocol {
    // 타입 프로퍼티
    static var someTypeProperty: Int { get set }
    
}


// FullyNamed 라는 이름의 프로토콜
protocol FullyNamed {
    // 읽기 전용으로 String타입인 fullName 프로퍼티 정의
    // 프로토콜에서 fullName아러는 프로퍼티를 "요구"
    var fullName: String { get }
}

// 프로토콜 채택(adopted), 준수(conform)

// 클래스나 구조체 이름 다음에 :(콜론)을 찍고 채택할 프로토콜의 이름을 써 주면 채택

struct Person: FullyNamed {
    var fullName: String
}

// 프로토콜은 이 프로퍼티가 저장 프로퍼티인지, 연산 프로퍼티인지 명시하지 않는다. 오직 프로퍼티의 이름과 타입만이 요구된다

// 프로토콜에서 gettable 만 필요로 하는 경우, 모든 종류의 프로퍼티에서 요구사항을 충족시킬 수 있으며, 만약 필요하다면 settable이 될 수도 있다

// 프로토콜에서 gettable(읽기전용)만 필요로 하는 경우
protocol SecondFullyNamed {
    var secondFullName: String { get }
}

// 위에서 말한 "모든 종류의 프로퍼티"라는 것은 저장 프로퍼티나 연산 프로퍼티를 말하는 것이다
// 즉, 프로토콜에서 gettable(읽기전용)만 요구하연, 이 요구사항을 저장프로퍼티로 선언하든, 연산프로퍼티로 선언하든 상관없다는 말

// 1. 상수(Constant)저장 프로퍼티

protocol ConstantFullyNamed {
    // 상수 저장 프로퍼티
    var constantFullName: String { get }
}

struct ThirdPerson: ConstantFullyNamed {
    let constantFullName: String
}

var john = ThirdPerson(constantFullName: "John Apple")

print(john.constantFullName)

//john.constantFullName = "Jun" -> Error:  note: change 'let' to 'var' to make it mutable let constantFullName: String

// 상수 저장 프로퍼티, 상수로 선언된 저장 프로퍼티는 처음 값을 할당하고 나서, 값을 변경하지 못한다

// 2. 변수(Variable)저장 프로퍼티
protocol VariableFullyNamed {
    // 변수 저장 프로파티
    var variableFullName: String { get }
}

struct variablePerson: VariableFullyNamed {
    var variableFullName: String
}

var Jin = variablePerson(variableFullName: "Jin Apple")

print(Jin.variableFullName)

// 변수. 즉, var로 선언된다면 그 값을 바꿀 수 있게 된다
Jin.variableFullName = "Another Jin"

print(Jin.variableFullName)

// 3. 연산 프로퍼티 - gettable

// 연산 프로퍼티의 특징 중 하나가 바로 값을 저장하고 리턴할 변수가 따로 있어야 한다는 점, 그리고 var로 선언되어야 한다는 점

protocol ComputedFullyName {
    // 프로토콜에서 구현한 computedFullName 프로퍼티는 읽기 전용
    var computedFullName: String { get }
    
}

struct ComputedPerson: ComputedFullyName {
    
    // 값이 저장 될 프로퍼티 저장 프로퍼티
    var name: String
    
    // ComputedFullyName 프로토콜에서 computedFullName 프로토콜은 get -> 읽기 전용
    
    var computedFullName: String {
        return name
    }
    
}

var jane = ComputedPerson(name: "Jane Apple")

// jane.computedFullName = "Another Jane" -> Error: cannot assign to property: 'computedFullName' is a get-only property jane.computedFullName = "Another Jane"

// computedFullName 프로퍼티에 다른값을 넣을려고 하면 "읽기 전용"이기 때문에 다른 값을 넣어줄 수 없다고 위의 에러 메세지가 나온다

// jane이라는 ComputedPerson 인스턴스를 초기화할 때를 보면 파라미터로 computedFullName이 아닌 name이 나왔다

// 연산 프로퍼티는 값을 "저장"하는 것이 아닌, 연산을 통해서 값을 세팅하거나 리턴

// 그러므로 인스턴스 초기화때 연산 프로퍼티인 computedFullName을 통해 초기화 할 수 없고 진짜 값이 저장되는 name을 파라미터로 사용한다.

