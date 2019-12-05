import UIKit

// Struct -> 구조체
// Swift의 대부분의 타입은 구조체로 이루어져 있다
// Swift의 구조체는 타입을 정의하는것이다


// MARK: - 구조체의 생성

struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var mutableTypeProperty: Int = 100 // 가변 타입 프로퍼티
    static let immutableTypeProperty: Int = 100 // 불변 타입 프로퍼티
    
    func instanceMethod() {
        print("instance method") // 인스턴스 메서드
    }
    
    static func typeMethod() {
        print("type method") // 타입 메서드
    }
}

// MARK: - 구조체의 사용

// var mutable로 가변 인스턴스를 생성하였으므로 내부의 프로퍼티 값들을 변경해 줄 수 있다
var mutable: Sample = Sample() // 가변 인스턴스
print(mutable) // Sample(mutableProperty: 100, immutableProperty: 100)

mutable.mutableProperty = 200 // mutableProperty = 200 , immutableProperty = 100

// 그러나 var mutable 처럼 가변 인스턴스라 해도 구조체 생성 후 프로퍼티 구현시 불변 프로퍼티로 선언한 경우 값을 변경할 수 없다

//mutable.immutableProperty = 20
// error: cannot assign to property: 'immutableProperty' is a 'let' constant

// let으로 선언한 불변 인스턴스의 경우
let immutable: Sample = Sample()

// 아무리 구조체 선언부에서 프로퍼티 구현시 가변 프로퍼티로 선언했더라도 값을 변경할 수 없다
//immutable.mutableProperty = 200
// note: change 'let' to 'var' to make it mutable, let immutable: Sample = Sample()

//immutable.immutableProperty = 200

// MARK: - 타입 프로퍼티 및 메서드
// 타입 프로퍼티는 타입 자체에서 사용이 가능한 프로퍼티이며, 타입 메서드는 타입 자체에서 사용이 가능한 메서드를 뜻한다

Sample.typeMethod()
Sample.mutableTypeProperty = 300

//Sample.immutableTypeProperty = 200
// error: cannot assign to property: 'immutableTypeProperty' is a 'let' constant

// 인스턴스에서 타입 프로퍼티나 메서드를 사용하려 하면 error이 뜬다
//mutable.mutableTypeProperty = 300
// error: static member 'mutableTypeProperty' cannot be used on instance of type 'Sample'


//mutable.typeMethod()
// error: static member 'typeMethod' cannot be used on instance of type 'Sample'

// MARK: - 학생 구조체 예시
struct Student {
    var name: String?
    var `class`: String?
    
    init(name: String, class: String) {
        self.name = name
        self.class = `class`
    }
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class ?? "반을 찾을 수 없음")반 \(name ?? "알 수 없음")입니다")
    }
}

Student.selfIntroduce()

var Jun: Student = Student(name: "준", class: "스위프트")
print(Jun.name)
print(Jun.class)

Jun.name = "빈센트"
print(Jun.name)

Jun.class = "아이오에스"
print(Jun.class)
